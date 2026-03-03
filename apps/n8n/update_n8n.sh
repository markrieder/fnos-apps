#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="n8n"
APP_DISPLAY_NAME="n8n"
APP_VERSION_VAR="N8N_VERSION"
APP_VERSION="${N8N_VERSION:-latest}"
APP_DEPS=(curl tar jq)
APP_FPK_PREFIX="n8n"
APP_HELP_VERSION_EXAMPLE="1.70.0"

app_set_arch_vars() {
    :
}

app_show_help_examples() {
    cat << EOF
  $0 1.70.0                 # 指定版本
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local tag
    tag=$(curl -sL "https://api.github.com/repos/n8n-io/n8n/releases/latest" | jq -r '.tag_name')

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION=$(echo "$tag" | sed -E 's/^n8n@//' | sed -E 's/^v//')
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 1.70.0"
    info "目标版本: $APP_VERSION"
}

app_download() {
    :
}

app_build_app_tgz() {
    info "构建 app.tgz (Docker)..."
    export VERSION="$APP_VERSION"
    bash "$REPO_ROOT/scripts/apps/n8n/build.sh"
    cp "$REPO_ROOT/app.tgz" "$WORK_DIR/app.tgz"
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
