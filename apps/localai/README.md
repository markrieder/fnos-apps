# LocalAI for fnOS

每日自动同步 [LocalAI 官方](https://localai.io) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=localai) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:8185`

## 说明

- 本地 AI 模型推理服务器，兼容 OpenAI API 接口
- 支持多种开源大语言模型和嵌入模型
- 无需 GPU 也可运行，CPU 推理同样流畅
- 模型文件持久化存储，重启后保留
- 基于 Docker 部署，首次启动需要拉取镜像

## 本地构建

```bash
cd apps/localai && bash ../../scripts/build-fpk.sh . app.tgz
```

## Credits

- [LocalAI](https://localai.io)
