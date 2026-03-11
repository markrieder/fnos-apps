#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
TARBALL_ARCH="${TARBALL_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building EZBookkeeping ${VERSION} for ${TARBALL_ARCH}"

DOWNLOAD_URL="https://github.com/mayswind/ezbookkeeping/releases/download/v${VERSION}/ezbookkeeping-v${VERSION}-linux-${TARBALL_ARCH}.tar.gz"
curl -fL -o ezbookkeeping.tar.gz "$DOWNLOAD_URL"

mkdir -p extracted
tar -xzf ezbookkeeping.tar.gz -C extracted

mkdir -p app_root/bin app_root/ui
cp extracted/ezbookkeeping app_root/ezbookkeeping
chmod +x app_root/ezbookkeeping

cp apps/ezbookkeeping/fnos/bin/ezbookkeeping-server app_root/bin/ezbookkeeping-server
chmod +x app_root/bin/ezbookkeeping-server
cp -a apps/ezbookkeeping/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
