#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
TARBALL_ARCH="${TARBALL_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

# Map CI arch names to Rust target triples
case "$TARBALL_ARCH" in
  amd64) RUST_TARGET="x86_64-unknown-linux-gnu" ;;
  arm64) RUST_TARGET="aarch64-unknown-linux-gnu" ;;
  *) echo "Unsupported arch: $TARBALL_ARCH" >&2; exit 1 ;;
esac

echo "==> Building ZeroClaw ${VERSION} for ${TARBALL_ARCH} (${RUST_TARGET})"

DOWNLOAD_URL="https://github.com/zeroclaw-labs/zeroclaw/releases/download/v${VERSION}/zeroclaw-${RUST_TARGET}.tar.gz"
curl -fL -o zeroclaw.tar.gz "$DOWNLOAD_URL"

mkdir -p extracted
tar -xzf zeroclaw.tar.gz -C extracted

# Find the zeroclaw binary (may be at root or in a subdirectory)
ZEROCLAW_BIN=$(find extracted -name "zeroclaw" -type f | head -1)
[ -z "$ZEROCLAW_BIN" ] && { echo "zeroclaw binary not found in tarball" >&2; exit 1; }

mkdir -p app_root/bin app_root/ui

cp "$ZEROCLAW_BIN" app_root/zeroclaw
chmod +x app_root/zeroclaw

cp apps/zeroclaw/fnos/bin/zeroclaw-server app_root/bin/zeroclaw-server
chmod +x app_root/bin/zeroclaw-server
cp -a apps/zeroclaw/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
