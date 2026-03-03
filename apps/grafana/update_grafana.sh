#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="grafana"
APP_DISPLAY_NAME="Grafana"
APP_VERSION_VAR="GRAFANA_VERSION"
APP_VERSION="${GRAFANA_VERSION:-latest}"
APP_DEPS=(curl tar)
APP_FPK_PREFIX="grafana"
APP_HELP_VERSION_EXAMPLE="11.5.2"

app_set_arch_vars() {
    case "$ARCH" in
        x86) ZIP_ARCH="amd64" ;;
        arm) ZIP_ARCH="arm64" ;;
    esac
    info "Tar arch: $ZIP_ARCH"
}

app_show_help_examples() {
    cat << EOF
  $0 --arch x86 11.5.2      # 指定版本，x86 架构
  $0 11.5.2                 # 指定版本，自动检测架构
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local tag
    tag=$(curl -sL "https://api.github.com/repos/grafana/grafana/releases/latest" 2>/dev/null | \
        grep '"tag_name":' | sed -E 's/.*"v?([^"]+)".*/\1/')

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION="$tag"
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 11.5.2"
    info "目标版本: $APP_VERSION"
}

app_download() {
    local download_url="https://dl.grafana.com/oss/release/grafana-${APP_VERSION}.linux-${ZIP_ARCH}.tar.gz"

    info "下载 ($ARCH): $download_url"
    mkdir -p "$WORK_DIR"
    curl -L -f -o "$WORK_DIR/grafana.tar.gz" "$download_url" || error "下载失败"
    info "下载完成: $(du -h "$WORK_DIR/grafana.tar.gz" | cut -f1)"
}

app_build_app_tgz() {
    info "解压 grafana..."
    cd "$WORK_DIR"
    tar -xzf grafana.tar.gz

    info "构建 app.tgz..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/bin" "$dst/ui"

    local grafana_root
    grafana_root=$(find . -maxdepth 1 -type d \( -name "grafana-v${APP_VERSION}" -o -name "grafana-${APP_VERSION}" \) | head -1)
    [ -z "$grafana_root" ] && error "在 tar.gz 中找不到 grafana 目录"

    cp -a "$grafana_root"/. "$dst/"

    if [ -f "$dst/bin/grafana-server" ]; then
        mv "$dst/bin/grafana-server" "$dst/bin/grafana"
    fi
    [ -f "$dst/bin/grafana" ] || error "在 grafana 目录中找不到 bin/grafana-server"
    chmod +x "$dst/bin/grafana"

    cp "$PKG_DIR/bin/grafana-server" "$dst/bin/grafana-server"
    chmod +x "$dst/bin/grafana-server"
    cp -a "$PKG_DIR/ui"/* "$dst/ui/" 2>/dev/null || true

    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
