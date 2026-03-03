#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="ntfy"
APP_DISPLAY_NAME="Ntfy"
APP_VERSION_VAR="NTFY_VERSION"
APP_VERSION="${NTFY_VERSION:-latest}"
APP_DEPS=(curl tar unzip)
APP_FPK_PREFIX="ntfy"
APP_HELP_VERSION_EXAMPLE="2.11.0"

app_set_arch_vars() {
    case "$ARCH" in
        x86) ZIP_ARCH="amd64" ;;
        arm) ZIP_ARCH="arm64" ;;
    esac
    info "Zip arch: $ZIP_ARCH"
}

app_show_help_examples() {
    cat << EOF
  $0 --arch x86 2.11.0      # 指定版本，x86 架构
  $0 2.11.0                 # 指定版本，自动检测架构
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local tag
    tag=$(curl -sL "https://api.github.com/repos/binwiederhier/ntfy/releases/latest" 2>/dev/null | \
        grep '"tag_name":' | sed -E 's/.*"v?([^"]+)".*/\1/')

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION="$tag"
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 2.11.0"

    info "目标版本: $APP_VERSION"
}

app_download() {
    local download_url="https://github.com/binwiederhier/ntfy/releases/download/v${APP_VERSION}/ntfy_${APP_VERSION}_linux_${ZIP_ARCH}.tar.gz"

    info "下载 ($ARCH): $download_url"
    mkdir -p "$WORK_DIR"
    curl -L -f -o "$WORK_DIR/ntfy.tar.gz" "$download_url" || error "下载失败"
    info "下载完成: $(du -h "$WORK_DIR/ntfy.tar.gz" | cut -f1)"
}

app_build_app_tgz() {
    info "解压 ntfy..."
    cd "$WORK_DIR"
    tar -xzf ntfy.tar.gz

    info "构建 app.tgz..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/bin" "$dst/ui"

    local ntfy_bin
    ntfy_bin=$(find . -name "ntfy" -type f | head -1)
    [ -z "$ntfy_bin" ] && error "在 tar.gz 中找不到 ntfy 二进制文件"

    cp "$ntfy_bin" "$dst/ntfy"
    chmod +x "$dst/ntfy"

    cp "$PKG_DIR/bin/ntfy-server" "$dst/bin/ntfy-server"
    chmod +x "$dst/bin/ntfy-server"
    cp -a "$PKG_DIR/ui"/* "$dst/ui/" 2>/dev/null || true

    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
