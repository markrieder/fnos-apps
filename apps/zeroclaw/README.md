# ZeroClaw for fnOS

每日自动同步 [ZeroClaw](https://github.com/zeroclaw-labs/zeroclaw) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=zeroclaw) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:42617`

## 说明

- ZeroClaw 是一个轻量级 AI 智能体运行时，使用 Rust 编写
- 内存占用 <5MB，启动时间 <10ms，二进制体积约 8.8MB
- 支持 OpenAI、Anthropic、OpenRouter 等多个 AI 模型提供商
- 支持 Telegram、Discord、Slack、WhatsApp 等多通道接入
- 内置 Web UI 和 Gateway API
- 首次使用需通过 SSH 运行 `zeroclaw onboard` 完成初始化配置

## 首次配置

安装完成后，需要通过 SSH 登录 NAS 执行初始化：

```bash
# 切换到 zeroclaw 用户（或使用 sudo）
sudo -u zeroclaw /var/apps/zeroclaw/target/zeroclaw onboard --api-key <your-api-key> --provider openrouter
```

## 本地构建

```bash
./update_zeroclaw.sh                        # 最新版本，自动检测架构
./update_zeroclaw.sh --arch arm             # 指定架构
./update_zeroclaw.sh --arch arm 0.5.0       # 指定版本
./update_zeroclaw.sh --help                 # 查看帮助
```

## 版本标签

- `zeroclaw/v0.5.0` — 首次发布
- `zeroclaw/v0.5.0-r2` — 同版本打包修订

## Credits

- [ZeroClaw](https://github.com/zeroclaw-labs/zeroclaw) - Fast, small, and fully autonomous AI assistant infrastructure
