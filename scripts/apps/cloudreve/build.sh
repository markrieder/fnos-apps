#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Cloudreve ${VERSION} for ${ZIP_ARCH}"

DOWNLOAD_URL="https://github.com/cloudreve/cloudreve/releases/download/${VERSION}/cloudreve_${VERSION}_linux_${ZIP_ARCH}.tar.gz"
curl -fL -o cloudreve.tar.gz "$DOWNLOAD_URL"

tar -xzf cloudreve.tar.gz

mkdir -p app_root/bin app_root/ui
CLOUDREVE_BIN=$(find . -name "cloudreve" -type f | head -1)
[ -z "$CLOUDREVE_BIN" ] && { echo "cloudreve binary not found in tarball" >&2; exit 1; }

cp "$CLOUDREVE_BIN" app_root/cloudreve
chmod +x app_root/cloudreve

cp apps/cloudreve/fnos/bin/cloudreve-server app_root/bin/cloudreve-server
chmod +x app_root/bin/cloudreve-server
cp -a apps/cloudreve/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
