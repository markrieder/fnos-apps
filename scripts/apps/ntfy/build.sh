#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Ntfy ${VERSION} for ${ZIP_ARCH}"

DOWNLOAD_URL="https://github.com/binwiederhier/ntfy/releases/download/v${VERSION}/ntfy_${VERSION}_linux_${ZIP_ARCH}.tar.gz"
curl -fL -o ntfy.tar.gz "$DOWNLOAD_URL"

tar -xzf ntfy.tar.gz

mkdir -p app_root/bin app_root/ui
NTFY_BIN=$(find . -name "ntfy" -type f | head -1)
[ -z "$NTFY_BIN" ] && { echo "ntfy binary not found in tarball" >&2; exit 1; }

cp "$NTFY_BIN" app_root/ntfy
chmod +x app_root/ntfy

cp apps/ntfy/fnos/bin/ntfy-server app_root/bin/ntfy-server
chmod +x app_root/bin/ntfy-server
cp -a apps/ntfy/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
