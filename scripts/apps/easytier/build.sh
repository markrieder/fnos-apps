#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

case "$ZIP_ARCH" in
    amd64|x86_64)
        UPSTREAM_ARCH="x86_64"
        ;;
    arm64|aarch64)
        UPSTREAM_ARCH="aarch64"
        ;;
    *)
        echo "Unsupported ZIP_ARCH: $ZIP_ARCH" >&2
        exit 1
        ;;
esac

echo "==> Building EasyTier ${VERSION} for ${UPSTREAM_ARCH}"

DOWNLOAD_URL="https://github.com/EasyTier/EasyTier/releases/download/v${VERSION}/easytier-linux-${UPSTREAM_ARCH}-v${VERSION}.zip"
curl -fL -o easytier.zip "$DOWNLOAD_URL"

unzip -o easytier.zip >/dev/null

mkdir -p app_root/bin app_root/ui
EASYTIER_BIN=$(find . -path "./easytier-linux-*/easytier-web-embed" -type f | head -1)
[ -z "$EASYTIER_BIN" ] && { echo "easytier-web-embed binary not found in zip" >&2; exit 1; }

cp "$EASYTIER_BIN" app_root/easytier-web-embed
chmod +x app_root/easytier-web-embed

cp apps/easytier/fnos/bin/easytier-server app_root/bin/easytier-server
chmod +x app_root/bin/easytier-server
cp -a apps/easytier/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
