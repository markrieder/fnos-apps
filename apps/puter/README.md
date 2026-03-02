# Puter for fnOS

每日自动同步 [Puter](https://puter.com/) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=puter) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:4100`

## 说明

- Puter 是开源云桌面环境，在浏览器中提供完整桌面体验
- 支持文件管理、代码编辑、终端等桌面功能
- 数据存储在本地 SQLite 数据库中
- 首次启动需要拉取镜像，耗时较长

## 本地构建

```bash
cd apps/puter && bash ../../scripts/build-fpk.sh . app.tgz
```

## 版本标签

- `puter/v2.6.0` — 首次发布
- `puter/v2.6.0-r2` — 同版本打包修订
