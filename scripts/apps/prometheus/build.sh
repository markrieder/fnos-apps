#!/bin/bash
set -euo pipefail

VERSION="${VERSION:-}"
ZIP_ARCH="${ZIP_ARCH:-${DEB_ARCH:-amd64}}"

[ -z "$VERSION" ] && { echo "VERSION is required" >&2; exit 1; }

echo "==> Building Prometheus ${VERSION} for ${ZIP_ARCH}"

DOWNLOAD_URL="https://github.com/prometheus/prometheus/releases/download/v${VERSION}/prometheus-${VERSION}.linux-${ZIP_ARCH}.tar.gz"
curl -fL -o prometheus.tar.gz "$DOWNLOAD_URL"

tar -xzf prometheus.tar.gz

mkdir -p app_root/bin app_root/ui
PROMETHEUS_BIN=$(find . -path "*/prometheus-${VERSION}.linux-${ZIP_ARCH}/prometheus" -type f | head -1)
[ -z "$PROMETHEUS_BIN" ] && { echo "prometheus binary not found in tar.gz" >&2; exit 1; }

cp "$PROMETHEUS_BIN" app_root/prometheus
chmod +x app_root/prometheus

cp apps/prometheus/fnos/bin/prometheus-server app_root/bin/prometheus-server
chmod +x app_root/bin/prometheus-server
cp -a apps/prometheus/fnos/ui/* app_root/ui/ 2>/dev/null || true

cd app_root
tar -czf ../app.tgz .
