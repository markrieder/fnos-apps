#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
TARBALL_ARCH="${TARBALL_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Forgejo ${VERSION} for ${TARBALL_ARCH}"

DOWNLOAD_URL="https://codeberg.org/forgejo/forgejo/releases/download/v${VERSION}/forgejo-${VERSION}-linux-${TARBALL_ARCH}"
curl -fL -o forgejo "$DOWNLOAD_URL"

mkdir -p app_root/bin app_root/ui
chmod +x forgejo
cp forgejo app_root/forgejo

cp apps/forgejo/fnos/bin/forgejo-server app_root/bin/forgejo-server
chmod +x app_root/bin/forgejo-server
cp -a apps/forgejo/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
