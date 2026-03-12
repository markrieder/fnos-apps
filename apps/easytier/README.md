# EasyTier for fnOS

每日自动同步 [EasyTier 官方](https://github.com/EasyTier/EasyTier) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=easytier) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:11210`

## 说明

- 去中心化异地组网方案，基于 Rust 编写
- 使用 `easytier-web-embed` 版本，内嵌 Web 控制台
- 支持多节点自动组网，无需中心服务器
- 基于 WireGuard 协议，通信全程加密
- 数据存储在应用数据目录中

## 本地构建

```bash
./update_easytier.sh                        # 最新版本，自动检测架构
./update_easytier.sh --arch arm             # 指定架构
./update_easytier.sh --help                 # 查看帮助
```

## 版本标签

- `easytier/vX.Y.Z` — 首次发布
- `easytier/vX.Y.Z-r2` — 同版本打包修订

## Credits

- [EasyTier](https://github.com/EasyTier/EasyTier)
