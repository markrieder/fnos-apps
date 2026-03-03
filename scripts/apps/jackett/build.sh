#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Jackett ${VERSION} for ${ZIP_ARCH}"

case "$ZIP_ARCH" in
  amd64|x86_64)
    ZIP_ARCH="amd64"
    JACKETT_ARCH="AMDx64"
    ;;
  arm64|aarch64)
    ZIP_ARCH="arm64"
    JACKETT_ARCH="ARM64"
    ;;
  *)
    echo "Unsupported architecture: $ZIP_ARCH" >&2
    exit 1
    ;;
esac

DOWNLOAD_URL="https://github.com/Jackett/Jackett/releases/download/v${VERSION}/Jackett.Binaries.Linux${JACKETT_ARCH}.tar.gz"
curl -fL -o jackett.tar.gz "$DOWNLOAD_URL"

tar -xzf jackett.tar.gz

mkdir -p app_root/bin app_root/ui
[ -d "Jackett" ] || { echo "Jackett directory not found in tarball" >&2; exit 1; }

cp -a Jackett app_root/Jackett
[ -f app_root/Jackett/jackett ] || { echo "jackett binary not found" >&2; exit 1; }
chmod +x app_root/Jackett/jackett

cp apps/jackett/fnos/bin/jackett-server app_root/bin/jackett-server
chmod +x app_root/bin/jackett-server
cp -a apps/jackett/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
