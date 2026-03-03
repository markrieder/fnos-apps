#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Gitea ${VERSION} for ${ZIP_ARCH}"

DOWNLOAD_URL="https://github.com/go-gitea/gitea/releases/download/v${VERSION}/gitea-${VERSION}-linux-${ZIP_ARCH}"
curl -fL -o gitea "$DOWNLOAD_URL"

mkdir -p app_root/bin app_root/ui
chmod +x gitea
cp gitea app_root/gitea

cp apps/gitea/fnos/bin/gitea-server app_root/bin/gitea-server
chmod +x app_root/bin/gitea-server
cp -a apps/gitea/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
