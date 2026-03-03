#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ARCH="${ARCH:-x86_64}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building OpenClaw ${VERSION} for ${ARCH}"

# Node.js 22 LTS version
NODE_VERSION="22.14.0"
NODE_TARBALL="node-v${NODE_VERSION}-linux-x64.tar.xz"
NODE_URL="https://nodejs.org/dist/v${NODE_VERSION}/${NODE_TARBALL}"

echo "==> Downloading Node.js ${NODE_VERSION}..."
curl -fL -o "${NODE_TARBALL}" "${NODE_URL}"

echo "==> Extracting Node.js..."
tar -xf "${NODE_TARBALL}"
mv "node-v${NODE_VERSION}-linux-x64" node

echo "==> Installing openclaw ${VERSION}..."
export PATH="$(pwd)/node/bin:${PATH}"
npm install -g --prefix ./openclaw_global "openclaw@${VERSION}"

echo "==> Building app.tgz..."
mkdir -p app_root/server app_root/ui

# Copy Node.js runtime
cp -r node app_root/server/

# Copy openclaw npm package
cp -r openclaw_global app_root/server/

# Copy iframe-proxy.js
if [ -f "../../../apps/openclaw/server/iframe-proxy.js" ]; then
  cp "../../../apps/openclaw/server/iframe-proxy.js" app_root/server/
fi

# Copy UI files
if [ -d "../../../apps/openclaw/fnos/ui" ]; then
  cp -r ../../../apps/openclaw/fnos/ui/* app_root/ui/
fi

cd app_root
tar -czf ../app.tgz .
cd ..

echo "==> Build complete: app.tgz ($(du -h app.tgz | cut -f1))"
