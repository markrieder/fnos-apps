# Gitea for fnOS

每日自动同步 [Gitea 官方](https://gitea.com/) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=gitea) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:3003`

## 说明

- Gitea 是轻量级 Git 代码托管服务器，支持仓库管理和 Issue 跟踪
- 支持 Web 访问端口 3003 与 Git SSH 端口 2222
- 数据存储在应用数据目录中

## 本地构建

```bash
./update_gitea.sh                        # 最新版本，自动检测架构
./update_gitea.sh --arch arm             # 指定架构
./update_gitea.sh --arch arm 1.22.6      # 指定版本
./update_gitea.sh --help                 # 查看帮助
```

## 版本标签

- `gitea/v1.22.6` - 首次发布
- `gitea/v1.22.6-r2` - 同版本打包修订

## Credits

- [Gitea](https://gitea.com/) - A painless self-hosted Git service
