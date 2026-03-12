# LibreChat for fnOS

每日自动同步 [LibreChat 官方](https://librechat.ai) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=librechat) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:3085`

## 说明

- AI 聊天界面，支持 OpenAI、Anthropic、Google 等多模型
- 类 ChatGPT 体验，支持多轮对话和历史记录
- 内置 MongoDB 数据库，开箱即用
- 支持插件系统和自定义预设配置
- 基于 Docker 部署，首次启动需要拉取镜像

## 本地构建

```bash
cd apps/librechat && bash ../../scripts/build-fpk.sh . app.tgz
```

## Credits

- [LibreChat](https://librechat.ai)
