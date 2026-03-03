#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Rclone ${VERSION} for ${ZIP_ARCH}"

DOWNLOAD_URL="https://github.com/rclone/rclone/releases/download/v${VERSION}/rclone-v${VERSION}-linux-${ZIP_ARCH}.zip"
curl -fL -o rclone.zip "$DOWNLOAD_URL"

unzip -o rclone.zip

mkdir -p app_root/bin app_root/ui
RCLONE_BIN=$(find . -path "*/rclone-v${VERSION}-linux-${ZIP_ARCH}/rclone" -type f | head -1)
[ -z "$RCLONE_BIN" ] && { echo "rclone binary not found in zip" >&2; exit 1; }

cp "$RCLONE_BIN" app_root/rclone
chmod +x app_root/rclone

cp apps/rclone/fnos/bin/rclone-server app_root/bin/rclone-server
chmod +x app_root/bin/rclone-server
cp -a apps/rclone/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
