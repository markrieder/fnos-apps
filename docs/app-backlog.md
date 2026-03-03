# fnOS 应用待办清单 (App Backlog)

> **最后更新**: 2026-03-03
> 
> 本文档记录 GitHub Issues 中待实现的应用请求，按优先级排序。

---

## P0 - 高优先级 (核心需求、用户量大、打包难度低) — ✅ 全部完成

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 状态 | 说明 |
|---|------|------|--------|------|-------|------|------|
| 1 | **Jackett** | 9117 | C# | [GitHub](https://github.com/Jackett/Jackett) | #68 | ✅ 已完成 | *arr 套件索引器，Prowlarr 的替代方案 |
| 2 | **Alist** | 5246 | Go | [GitHub](https://github.com/AlistGo/alist) | #41 | ✅ 已完成 | 网盘聚合工具，挂载阿里云盘/百度盘等 |
| 3 | **Rclone** | 5572 | Go | [GitHub](https://github.com/rclone/rclone) | #37 | ✅ 已完成 | 强大的网盘同步工具，支持 50+ 存储后端 |
| 4 | **Pi-hole** | 8053 | Docker | [GitHub](https://github.com/pi-hole/pi-hole) | #36 | ✅ 已完成 | 全网广告拦截，AdGuardHome 的竞品 |
| 5 | **1Panel** | 10086 | Go | [GitHub](https://github.com/1Panel-dev/1Panel) | #52 | ✅ 已完成 | 国产服务器面板，与 fnOS 功能互补 |

### P0 实现详情

#### Jackett (#68) — ✅ `apps/jackett/` (端口 9117)
- **打包模式**: 原生 C# .NET 自包含二进制
- **特殊处理**: 架构映射 AMDx64/ARM64（非标准 amd64/arm64）

#### Alist (#41) — ✅ `apps/alist/` (端口 5246)
- **打包模式**: 原生 Go 二进制
- **端口说明**: 默认 5244 与 OpenList 冲突，改用 5246

#### Rclone (#37) — ✅ `apps/rclone/` (端口 5572)
- **打包模式**: 原生 Go 二进制（zip 嵌套目录）

#### Pi-hole (#36) — ✅ `apps/pihole/` (端口 8053)
- **打包模式**: Docker，额外端口 53/tcp+udp (DNS)
- **安装向导**: 管理员密码设置 + DNS 端口冲突警告

#### 1Panel (#52) — ✅ `apps/1panel/` (端口 10086)
- **打包模式**: 原生 Go 二进制
- **特殊处理**: 二进制从 resource.1panel.pro 下载（非 GitHub Releases）

---

## P1 - 中高优先级 (特定场景需求、打包中等难度) — ✅ 全部完成

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 状态 | 说明 |
|---|------|------|--------|------|-------|------|------|
| 6 | **Tautulli** | 8181 | Docker | [GitHub](https://github.com/Tautulli/Tautulli) | #74 | ✅ 已完成 | Plex 使用统计与通知 |
| 7 | **Seerr** | 5055 | Docker | [GitHub](https://github.com/seerr-team/seerr) | #73 | ✅ 已完成 | Overseerr 新分支，媒体请求管理 |
| 8 | **Grafana** | 3010 | Go | [GitHub](https://github.com/grafana/grafana) | #33 | ✅ 已完成 | 可视化监控仪表盘，配 Prometheus |
| 9 | **Prometheus** | 9090 | Go | [GitHub](https://github.com/prometheus/prometheus) | #35 | ✅ 已完成 | 时序数据库，系统监控核心 |
| 10 | **Loki** | 3100 | Go | [GitHub](https://github.com/grafana/loki) | #62 | ✅ 已完成 | 日志聚合系统，Grafana 生态 |
| 11 | **Home Assistant** | 8123 | Docker | [GitHub](https://github.com/home-assistant/core) | #32 | ✅ 已完成 | 智能家居中枢，用户量巨大 |
| 12 | **n8n** | 5678 | Docker | [GitHub](https://github.com/n8n-io/n8n) | #31 | ✅ 已完成 | 工作流自动化，类 Zapier |
| 13 | **Ntfy** | 2586 | Go | [GitHub](https://github.com/binwiederhier/ntfy) | #60 | ✅ 已完成 | 自托管推送通知，替代 Gotify |
| 14 | **Gitea** | 3003 | Go | [GitHub](https://github.com/go-gitea/gitea) | #39 | ✅ 已完成 | 轻量级 Git 服务器 |
| 15 | **WG-Easy** | 51821 | Docker | [GitHub](https://github.com/wg-easy/wg-easy) | #66 | ✅ 已完成 | WireGuard VPN 管理界面 |
| 16 | **Headscale** | 8480 | Go | [GitHub](https://github.com/juanfont/headscale) | #47 | ✅ 已完成 | Tailscale 自托管服务端 |

---

## P2 - 中优先级 (特定用户群、打包较复杂) — ✅ 全部完成

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 状态 | 说明 |
|---|------|------|--------|------|-------|------|------|
| 17 | **Duplicati** | 8200 | Docker | [GitHub](https://github.com/duplicati/duplicati) | #69 | ✅ 已完成 | 加密备份工具，支持云存储 |
| 18 | **Frigate** | 8971 | Docker | [GitHub](https://github.com/blakeblackshear/frigate) | #59 | ✅ 已完成 | AI 视频监控，支持物体检测 |
| 19 | **Glances** | 61208 | Docker | [GitHub](https://github.com/nicolargo/glances) | #58 | ✅ 已完成 | 系统监控，Web UI 版 htop |
| 20 | **Cloudreve** | 5212 | Go | [GitHub](https://github.com/cloudreve/cloudreve) | #64 | ✅ 已完成 | 国产网盘系统 |
| 21 | **LibreChat** | 3080 | Docker | [GitHub](https://github.com/danny-avila/LibreChat) | #51 | ✅ 已完成 | AI 聊天界面，支持多模型 |
| 22 | **LocalAI** | 8180 | Docker | [GitHub](https://github.com/mudler/LocalAI) | #42 | ✅ 已完成 | 本地 AI 模型推理 |
| 23 | **Sunshine** | 47990 | Docker | [GitHub](https://github.com/LizardByte/Sunshine) | #50 | ✅ 已完成 | 游戏串流服务器，Moonlight 配对 |
| 24 | **Mattermost** | 8065 | Docker | [GitHub](https://github.com/mattermost/mattermost) | #48 | ✅ 已完成 | 企业级即时通讯，Slack 替代 |
| 25 | **It-Tools** | 8280 | Docker | [GitHub](https://github.com/CorentinTh/it-tools) | #46 | ✅ 已完成 | 开发者工具箱，JSON/YAML 转换等 |
| 26 | **AppFlowy** | 8500 | Docker | [GitHub](https://github.com/AppFlowy-IO/AppFlowy) | #34 | ✅ 已完成 | Notion 替代品，本地优先 |
| 27 | **Ente** | 8510 | Docker | [GitHub](https://github.com/ente-io/ente) | #65 | ✅ 已完成 | 端到端加密照片备份 |
| 28 | **NetBird** | 8820 | Docker | [GitHub](https://github.com/netbirdio/netbird) | #67 | ✅ 已完成 | Zero Trust VPN 平台 |

---

## P3 - 低优先级/长期考虑 (需求小众或打包极复杂)

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 说明 |
|---|------|------|--------|------|-------|------|
| 29 | **Keycloak** | ? | Java | [GitHub](https://github.com/keycloak/keycloak) | #54 | 企业身份认证 SSO |
| 30 | **ERPNext** | ? | Python | [GitHub](https://github.com/frappe/erpnext) | #56 | 开源 ERP 系统，极其复杂 |
| 31 | **Medusa** | ? | Node.js | [GitHub](https://github.com/medusajs/medusa) | #55 | 电商后台系统 |
| 32 | **Budibase** | ? | Node.js | [GitHub](https://github.com/Budibase/budibase) | #63 | 低代码平台 |
| 33 | **Dokku** | ? | Shell | [GitHub](https://github.com/dokku/dokku) | #57 | 迷你 PaaS 平台 |
| 34 | **Mastodon** | ? | Ruby | [GitHub](https://github.com/mastodon/mastodon) | #40 | 去中心化社交，资源占用高 |
| 35 | **Appwrite** | ? | PHP | [GitHub](https://github.com/appwrite/appwrite) | #38 | BaaS 后端服务 |
| 36 | **Novu** | ? | Node.js | [GitHub](https://github.com/novuhq/novu) | #45 | 通知管理平台 |
| 37 | **CopyParty** | ? | Python | [GitHub](https://github.com/9001/copyparty) | #43 | 文件共享服务器 |
| 38 | **Reactive-Resume** | ? | Node.js | [GitHub](https://github.com/amruthpillai/reactive-resume) | #49 | 简历生成器 |

---

## 复杂/特殊考虑

| # | 应用 | Issue | 状态 | 说明 |
|---|------|-------|------|------|
| 39 | **OAuth2-Proxy** | #70 | 🔍 待评估 | 认证代理，使用场景待明确 |
| 40 | **wazuh** | #26 | 🔍 待评估 | 安全监控平台，资源占用高 |
| 41 | **FnDeport** | #30 | 🔍 待评估 | fnOS 生态应用，需了解详情 |
| 42 | **各种应用** | #24 | 📋 集合 | 指向 selfh.st/apps，需逐一评估 |

---

## 技术栈打包难度参考

| 技术栈 | 难度 | 示例应用 | 备注 |
|--------|------|----------|------|
| Go 单二进制 | ⭐ 低 | Alist, Rclone, Ntfy | 下载即用 |
| C# .NET | ⭐⭐ 中 | Jackett | 复用已有模板 |
| Node.js | ⭐⭐⭐ 高 | n8n, Mattermost | 需 Docker |
| Python | ⭐⭐⭐ 高 | Home Assistant, Frigate | 依赖复杂 |
| Java | ⭐⭐⭐ 高 | Keycloak | 需 JVM |
| 多容器 | ⭐⭐⭐⭐ 极高 | ERPNext | 架构复杂 |

---

## 开发完成总结

P0/P1/P2 全部 28 款应用已于 2026-03-03 完成打包，分为以下模式：

### 原生二进制 (11 款)
| 应用 | 端口 | 语言 | 特殊处理 |
|------|------|------|----------|
| Alist | 5246 | Go | 端口避让 OpenList |
| Rclone | 5572 | Go | zip 嵌套目录 |
| Cloudreve | 5212 | Go | — |
| Ntfy | 2586 | Go | 默认端口 80 不适用 |
| Gitea | 3003 | Go | 额外 SSH 端口 2222，裸二进制 |
| Headscale | 8480 | Go | 裸二进制 |
| Prometheus | 9090 | Go | tar.gz 嵌套目录 |
| Loki | 3100 | Go | zip + 二进制重命名 |
| Grafana | 3010 | Go | 保留 bin/conf/public 目录结构 |
| 1Panel | 10086 | Go | 从 resource.1panel.pro 下载 |
| Jackett | 9117 | C# | 架构映射 AMDx64/ARM64 |

### Docker 容器 (17 款)
| 应用 | 端口 | 镜像 | 特殊配置 |
|------|------|------|----------|
| Tautulli | 8181 | linuxserver/tautulli | PUID/PGID |
| Seerr | 5055 | seerrteam/seerr | — |
| n8n | 5678 | n8nio/n8n | — |
| It-Tools | 8280 | corentinth/it-tools | 无状态 |
| Duplicati | 8200 | linuxserver/duplicati | PUID/PGID |
| Glances | 61208 | nicolargo/glances | pid: host |
| LocalAI | 8180 | localai/localai | CPU 模式 |
| Sunshine | 47990 | linuxserver/sunshine | GPU + 多端口 |
| Pi-hole | 8053 | pihole/pihole | DNS 53 端口 |
| WG-Easy | 51821 | wg-easy/wg-easy | NET_ADMIN + sysctls |
| Home Assistant | 8123 | linuxserver/homeassistant | host 网络 + 特权 |
| Frigate | 8971 | blakeblackshear/frigate | GPU + shm_size |
| Mattermost | 8065 | mattermost-team-edition | + PostgreSQL |
| LibreChat | 3080 | danny-avila/librechat | + MongoDB |
| AppFlowy | 8500 | appflowyinc/appflowy_cloud | — |
| Ente | 8510 | ente-io/server | + PostgreSQL + MinIO |
| NetBird | 8820 | netbirdio/netbird | host 网络，客户端模式 |
