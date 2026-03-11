#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="surveyking"
APP_DISPLAY_NAME="SurveyKing"
APP_VERSION_VAR="SURVEYKING_VERSION"
APP_VERSION="${SURVEYKING_VERSION:-latest}"
APP_DEPS=(curl jq)
APP_FPK_PREFIX="surveyking"
APP_HELP_VERSION_EXAMPLE="1.0.0"

app_set_arch_vars() {
    info "Docker mode - no arch-specific build needed"
}

app_show_help_examples() {
    cat << HELP
  $0 1.0.0                  # Specific version
  $0                        # Latest version
HELP
}

app_get_latest_version() {
    info "Getting latest version from Docker Hub..."
    local tag
    tag=$(curl -sL "https://hub.docker.com/v2/repositories/surveyking/surveyking/tags/?page_size=10&ordering=last_updated" 2>/dev/null | \
        jq -r '.results[0].name' || echo "")
    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION=$(echo "$tag" | sed 's/^v//')
    fi
    [ -z "$APP_VERSION" ] && error "Unable to get version, specify manually: $0 1.0.0"
    info "Target version: $APP_VERSION"
}

app_download() {
    info "Docker mode - no download needed"
}

app_build_app_tgz() {
    info "Building app.tgz for Docker mode..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/docker" "$dst/ui"

    cp "$PKG_DIR/docker/docker-compose.yaml" "$dst/docker/"
    sed -i "s/\${VERSION}/${APP_VERSION}/g" "$dst/docker/docker-compose.yaml"
    cp -a "$PKG_DIR/ui"/* "$dst/ui/" 2>/dev/null || true

    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
