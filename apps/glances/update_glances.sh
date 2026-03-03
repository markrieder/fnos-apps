#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
APP_NAME="glances"

cd "$REPO_ROOT"
./scripts/apps/${APP_NAME}/build.sh
./scripts/build-fpk.sh "apps/${APP_NAME}" app.tgz "${VERSION:-latest-full}" "${ARCH:-}"

echo "Build completed: ${APP_NAME}"
