# AppFlowy for fnOS

每日自动同步 [AppFlowy 官方](https://appflowy.io) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=appflowy) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:8501`

## 说明

- 协作文档平台，Notion 开源替代
- 支持实时协作编辑和多人协作
- 数据完全自主可控，本地优先存储
- 丰富的文档编辑和数据库功能
- 基于 Docker 部署，首次启动需要拉取镜像

## 本地构建

```bash
cd apps/appflowy && bash ../../scripts/build-fpk.sh . app.tgz
```

## Credits

- [AppFlowy](https://appflowy.io)
