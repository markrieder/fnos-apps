#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="jackett"
APP_DISPLAY_NAME="Jackett"
APP_VERSION_VAR="JACKETT_VERSION"
APP_VERSION="${JACKETT_VERSION:-latest}"
APP_DEPS=(curl tar)
APP_FPK_PREFIX="jackett"
APP_HELP_VERSION_EXAMPLE="0.22.1688"

app_set_arch_vars() {
    case "$ARCH" in
        x86) ZIP_ARCH="amd64" ;;
        arm) ZIP_ARCH="arm64" ;;
    esac
    info "Tar arch: $ZIP_ARCH"
}

app_show_help_examples() {
    cat << EOF
  $0 --arch x86 0.22.1688   # 指定版本，x86 架构
  $0 0.22.1688              # 指定版本，自动检测架构
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local tag
    tag=$(curl -sL "https://api.github.com/repos/Jackett/Jackett/releases/latest" 2>/dev/null | \
        grep '"tag_name":' | sed -E 's/.*"v?([^"]+)".*/\1/')

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION="$tag"
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 0.22.1688"
    info "目标版本: $APP_VERSION"
}

app_download() {
    local jackett_arch
    case "$ZIP_ARCH" in
        amd64) jackett_arch="AMDx64" ;;
        arm64) jackett_arch="ARM64" ;;
        *) error "不支持的架构: $ZIP_ARCH" ;;
    esac

    local download_url="https://github.com/Jackett/Jackett/releases/download/v${APP_VERSION}/Jackett.Binaries.Linux${jackett_arch}.tar.gz"

    info "下载 ($ARCH): $download_url"
    mkdir -p "$WORK_DIR"
    curl -L -f -o "$WORK_DIR/jackett.tar.gz" "$download_url" || error "下载失败"
    info "下载完成: $(du -h "$WORK_DIR/jackett.tar.gz" | cut -f1)"
}

app_build_app_tgz() {
    info "解压 Jackett..."
    cd "$WORK_DIR"
    tar -xzf jackett.tar.gz

    info "构建 app.tgz..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/bin" "$dst/ui"

    [ -d "Jackett" ] || error "在 tar.gz 中找不到 Jackett 目录"
    cp -a "Jackett" "$dst/Jackett"

    [ -f "$dst/Jackett/jackett" ] || error "在 Jackett 目录中找不到 jackett 二进制文件"
    chmod +x "$dst/Jackett/jackett"

    cp "$PKG_DIR/bin/jackett-server" "$dst/bin/jackett-server"
    chmod +x "$dst/bin/jackett-server"
    cp -a "$PKG_DIR/ui"/* "$dst/ui/" 2>/dev/null || true

    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
