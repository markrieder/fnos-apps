#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Grafana ${VERSION} for ${ZIP_ARCH}"

case "$ZIP_ARCH" in
  amd64|x86_64)
    GRAFANA_ARCH="amd64"
    ;;
  arm64|aarch64)
    GRAFANA_ARCH="arm64"
    ;;
  *)
    echo "Unsupported architecture: $ZIP_ARCH" >&2
    exit 1
    ;;
esac

DOWNLOAD_URL="https://dl.grafana.com/oss/release/grafana-${VERSION}.linux-${GRAFANA_ARCH}.tar.gz"
curl -fL -o grafana.tar.gz "$DOWNLOAD_URL"

tar -xzf grafana.tar.gz

mkdir -p app_root/bin app_root/ui
GRAFANA_ROOT=$(find . -maxdepth 1 -type d \( -name "grafana-v${VERSION}" -o -name "grafana-${VERSION}" \) | head -1)
[ -z "$GRAFANA_ROOT" ] && { echo "grafana root directory not found in tarball" >&2; exit 1; }

cp -a "$GRAFANA_ROOT"/. app_root/

if [ -f app_root/bin/grafana-server ]; then
  mv app_root/bin/grafana-server app_root/bin/grafana
fi
[ -f app_root/bin/grafana ] || { echo "grafana binary not found in tarball" >&2; exit 1; }
chmod +x app_root/bin/grafana

cp apps/grafana/fnos/bin/grafana-server app_root/bin/grafana-server
chmod +x app_root/bin/grafana-server
cp -a apps/grafana/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
