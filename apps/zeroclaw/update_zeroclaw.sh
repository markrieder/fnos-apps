#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="zeroclaw"
APP_DISPLAY_NAME="ZeroClaw"
APP_VERSION_VAR="ZEROCLAW_VERSION"
APP_VERSION="${ZEROCLAW_VERSION:-latest}"
APP_DEPS=(curl tar)
APP_FPK_PREFIX="zeroclaw"
APP_HELP_VERSION_EXAMPLE="0.5.0"

app_set_arch_vars() {
    case "$ARCH" in
        x86) RUST_TARGET="x86_64-unknown-linux-gnu" ;;
        arm) RUST_TARGET="aarch64-unknown-linux-gnu" ;;
    esac
    info "Rust target: $RUST_TARGET"
}

app_show_help_examples() {
    cat << EOF
  $0 --arch x86 0.5.0       # 指定版本，x86 架构
  $0 0.5.0                  # 指定版本，自动检测架构
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local tag
    tag=$(curl -sL "https://api.github.com/repos/zeroclaw-labs/zeroclaw/releases/latest" 2>/dev/null | \
        grep '"tag_name":' | sed -E 's/.*"v?([^"]+)".*/\1/')

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION="$tag"
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 0.5.0"

    info "目标版本: $APP_VERSION"
}

app_download() {
    local download_url="https://github.com/zeroclaw-labs/zeroclaw/releases/download/v${APP_VERSION}/zeroclaw-${RUST_TARGET}.tar.gz"

    info "下载 ($ARCH): $download_url"
    mkdir -p "$WORK_DIR"
    curl -L -f -o "$WORK_DIR/zeroclaw.tar.gz" "$download_url" || error "下载失败"
    info "下载完成: $(du -h "$WORK_DIR/zeroclaw.tar.gz" | cut -f1)"
}

app_build_app_tgz() {
    info "解压 zeroclaw..."
    cd "$WORK_DIR"
    mkdir -p extracted
    tar -xzf zeroclaw.tar.gz -C extracted

    info "构建 app.tgz..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/bin" "$dst/ui"

    local zeroclaw_bin
    zeroclaw_bin=$(find extracted -name "zeroclaw" -type f | head -1)
    [ -z "$zeroclaw_bin" ] && error "在 tarball 中找不到 zeroclaw 二进制文件"

    cp "$zeroclaw_bin" "$dst/zeroclaw"
    chmod +x "$dst/zeroclaw"

    cp "$PKG_DIR/bin/zeroclaw-server" "$dst/bin/zeroclaw-server"
    chmod +x "$dst/bin/zeroclaw-server"
    cp -a "$PKG_DIR/ui"/* "$dst/ui/" 2>/dev/null || true

    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
