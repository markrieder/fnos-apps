#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/meta.env"

VERSION="${VERSION:-latest}"
WORK_DIR=$(mktemp -d)
trap "rm -rf $WORK_DIR" EXIT

# Download HACS China Edition
info() { echo "[INFO] $1"; }
warn() { echo "[WARN] $1"; }

info "Downloading HACS China Edition..."
mkdir -p "${WORK_DIR}/extras/hacs"

# Try GitHub first, fallback to Gitee
HACS_URL="https://github.com/hacs-china/integration/releases/latest/download/hacs.zip"
HACS_FALLBACK_URL="https://gitee.com/hacs-china/integration/releases/latest/download/hacs.zip"

if command -v curl &> /dev/null; then
    if ! curl -sL --max-time 30 "$HACS_URL" -o "${WORK_DIR}/hacs.zip" 2>/dev/null; then
        warn "GitHub download failed, trying Gitee mirror..."
        if ! curl -sL --max-time 30 "$HACS_FALLBACK_URL" -o "${WORK_DIR}/hacs.zip" 2>/dev/null; then
            warn "HACS download failed, continuing without HACS pre-bundling"
            rm -rf "${WORK_DIR}/extras"
        fi
    fi
else
    warn "curl not available, skipping HACS download"
    rm -rf "${WORK_DIR}/extras"
fi

# Extract HACS if downloaded
if [ -f "${WORK_DIR}/hacs.zip" ]; then
    if command -v unzip &> /dev/null; then
        unzip -q "${WORK_DIR}/hacs.zip" -d "${WORK_DIR}/extras/hacs/" 2>/dev/null || {
            warn "HACS extraction failed, continuing without HACS"
            rm -rf "${WORK_DIR}/extras"
        }
        rm -f "${WORK_DIR}/hacs.zip"
        info "HACS bundled successfully"
    else
        warn "unzip not available, trying Python..."
        if python3 -c "import zipfile; zipfile.ZipFile('${WORK_DIR}/hacs.zip').extractall('${WORK_DIR}/extras/hacs/')" 2>/dev/null; then
            rm -f "${WORK_DIR}/hacs.zip"
            info "HACS bundled successfully (via Python)"
        else
            warn "HACS extraction failed, continuing without HACS"
            rm -rf "${WORK_DIR}/extras"
        fi
    fi
fi

mkdir -p "${WORK_DIR}/docker"
cp "${SCRIPT_DIR}/../../../apps/homeassistant/fnos/docker/docker-compose.yaml" "${WORK_DIR}/docker/"
sed -i.bak "s/\${VERSION}/${VERSION}/g" "${WORK_DIR}/docker/docker-compose.yaml"
rm -f "${WORK_DIR}/docker/docker-compose.yaml.bak"

cp -a "${SCRIPT_DIR}/../../../apps/homeassistant/fnos/ui" "${WORK_DIR}/ui"

cd "${WORK_DIR}"

# Include extras/ in tarball if it exists
if [ -d "extras" ]; then
    tar czf "${SCRIPT_DIR}/../../../app.tgz" docker/ ui/ extras/
else
    tar czf "${SCRIPT_DIR}/../../../app.tgz" docker/ ui/
fi

echo "Built app.tgz for homeassistant ${VERSION}"
