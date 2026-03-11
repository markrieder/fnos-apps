#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="penpot"
APP_DISPLAY_NAME="Penpot"
APP_VERSION_VAR="PENPOT_VERSION"
APP_VERSION="${PENPOT_VERSION:-latest}"
APP_DEPS=(curl jq)
APP_FPK_PREFIX="penpot"
APP_HELP_VERSION_EXAMPLE="2.9.3"

app_set_arch_vars() {
    info "Docker mode - no arch-specific build needed"
}

app_show_help_examples() {
    cat << HELP
  $0 2.9.3                  # Specific version
  $0                        # Latest version
HELP
}

app_get_latest_version() {
    info "Getting latest version..."
    local tag
    tag=$(curl -sL "https://api.github.com/repos/penpot/penpot/releases/latest" 2>/dev/null | \
        jq -r '.tag_name' || echo "")
    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION=$(echo "$tag" | sed 's/^v//')
    fi
    [ -z "$APP_VERSION" ] && error "Unable to get version, specify manually: $0 2.9.3"
    info "Target version: $APP_VERSION"
}

app_download() {
    info "Docker mode - no download needed"
    mkdir -p "$WORK_DIR"
}

app_build_app_tgz() {
    info "Building app.tgz for Docker mode..."
    export VERSION="$APP_VERSION"
    bash "$REPO_ROOT/scripts/apps/penpot/build.sh"
    cp "$REPO_ROOT/app.tgz" "$WORK_DIR/app.tgz"
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
