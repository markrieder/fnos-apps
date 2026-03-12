# Rclone for fnOS

每日自动同步 [Rclone 官方](https://rclone.org) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=rclone) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:5572`
**默认账号**: `admin` / `admin`

## 说明

- 云存储同步工具，支持 50+ 种存储后端
- 支持阿里云 OSS、S3、Google Drive、OneDrive 等
- 提供 Web GUI 管理界面
- 支持挂载、同步、复制、加密等多种操作模式
- 数据存储在应用数据目录中

## 本地构建

```bash
./update_rclone.sh                        # 最新版本，自动检测架构
./update_rclone.sh --arch arm             # 指定架构
./update_rclone.sh --help                 # 查看帮助
```

## 版本标签

- `rclone/vX.Y.Z` — 首次发布
- `rclone/vX.Y.Z-r2` — 同版本打包修订

## Credits

- [Rclone](https://rclone.org)
