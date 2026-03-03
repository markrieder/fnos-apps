#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
PKG_DIR="$SCRIPT_DIR/fnos"

APP_NAME="openclaw"
APP_DISPLAY_NAME="OpenClaw AI 网关"
APP_VERSION_VAR="OPENCLAW_VERSION"
APP_VERSION="${OPENCLAW_VERSION:-latest}"
APP_DEPS=(curl tar)
APP_FPK_PREFIX="openclaw"
APP_HELP_VERSION_EXAMPLE="2026.2.26"

# 注意: 此脚本仅支持在 Linux x86_64 环境下运行
app_set_arch_vars() {
    case "$ARCH" in
        x86)
            NODE_ARCH="x64"
            ;;
        arm)
            error "OpenClaw 仅支持 x86 架构，不支持 ARM"
            ;;
    esac
    info "Node.js arch: $NODE_ARCH"
}

app_show_help_examples() {
    cat << EOF
  $0 --arch x86 2026.2.26    # 指定版本，x86 架构
  $0 2026.2.26               # 指定版本，自动检测架构
EOF
}

app_get_latest_version() {
    info "获取最新版本信息..."

    local version
    version=$(curl -sL "https://registry.npmjs.org/openclaw/latest" 2>/dev/null | \
        grep -o '"version":"[^"]*"' | cut -d'"' -f4)

    if [ "$APP_VERSION" = "latest" ]; then
        APP_VERSION="$version"
    fi

    [ -z "$APP_VERSION" ] && error "无法获取版本信息，请手动指定: $0 2026.2.26"

    info "目标版本: $APP_VERSION"
}

app_download() {
    local node_version="22.14.0"
    local node_url="https://nodejs.org/dist/v${node_version}/node-v${node_version}-linux-${NODE_ARCH}.tar.xz"

    info "下载 Node.js ($ARCH): $node_url"
    mkdir -p "$WORK_DIR"
    curl -L -f -o "$WORK_DIR/node.tar.xz" "$node_url" || error "下载 Node.js 失败"
    info "Node.js 下载完成: $(du -h "$WORK_DIR/node.tar.xz" | cut -f1)"
}

app_build_app_tgz() {
    info "解压 Node.js..."
    cd "$WORK_DIR"
    tar -xJf node.tar.xz

    info "构建 app.tgz..."
    local dst="$WORK_DIR/app_root"
    mkdir -p "$dst/bin" "$dst/lib"

    # 复制 Node.js 二进制和库
    local node_dir
    node_dir=$(find . -maxdepth 1 -type d -name "node-v*" | head -1)
    [ -z "$node_dir" ] && error "在 tar.xz 中找不到 Node.js 目录"

    cp -a "$node_dir/bin/node" "$dst/bin/"
    cp -a "$node_dir/bin/npm" "$dst/bin/"
    cp -a "$node_dir/lib/node_modules" "$dst/lib/" 2>/dev/null || true

    # 安装 openclaw
    info "安装 openclaw 包..."
    cd "$dst"
    export PATH="$dst/bin:$PATH"
    export NODE_PATH="$dst/lib/node_modules"
    
    "$dst/bin/npm" install --prefix "$dst" --no-save "openclaw@${APP_VERSION}" || error "npm install 失败"

    # 创建启动脚本
    mkdir -p "$dst/bin"
    cat > "$dst/bin/openclaw-server" << 'SCRIPT'
#!/bin/bash
export NODE_PATH="/var/apps/openclaw/lib/node_modules"
exec /var/apps/openclaw/bin/node /var/apps/openclaw/node_modules/openclaw/bin/openclaw.js "$@"
SCRIPT
    chmod +x "$dst/bin/openclaw-server"

    # 打包 app.tgz
    cd "$dst"
    tar -czf "$WORK_DIR/app.tgz" .
    info "app.tgz: $(du -h "$WORK_DIR/app.tgz" | cut -f1)"
}

source "$REPO_ROOT/scripts/lib/update-common.sh"
main_flow "$@"
