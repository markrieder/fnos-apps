# fnOS 应用待办清单 (App Backlog)

> **最后更新**: 2026-03-03
> 
> 本文档记录 GitHub Issues 中待实现的应用请求，按优先级排序。

---

## P0 - 高优先级 (核心需求、用户量大、打包难度低)

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 说明 |
|---|------|------|--------|------|-------|------|
| 1 | **Jackett** | ? | C# | [GitHub](https://github.com/Jackett/Jackett) | #68 | *arr 套件索引器，Prowlarr 的替代方案 |
| 2 | **Alist** | ? | Go | [GitHub](https://github.com/AlistGo/alist) | #41 | 网盘聚合工具，挂载阿里云盘/百度盘等 |
| 3 | **Rclone** | ? | Go | [GitHub](https://github.com/rclone/rclone) | #37 | 强大的网盘同步工具，支持 50+ 存储后端 |
| 4 | **Pi-hole** | ? | Shell | [GitHub](https://github.com/pi-hole/pi-hole) | #36 | 全网广告拦截，AdGuardHome 的竞品 |
| 5 | **1Panel** | ? | Go/Vue | [GitHub](https://github.com/1Panel-dev/1Panel) | #52 | 国产服务器面板，与 fnOS 功能互补 |

### P0 详细说明

#### Jackett (#68)
- **技术**: C# (.NET 原生二进制)
- **打包**: 同 Prowlarr 模式，复用 .NET 打包模板
- **需求**: 作为 Prowlarr 的替代品，部分索引器仅支持 Jackett

#### Alist (#41)
- **技术**: Go 单二进制
- **打包**: 原生 Go，难度低
- **需求**: 中国用户刚需，挂载阿里云盘/百度网盘到本地

#### Rclone (#37)
- **技术**: Go
- **打包**: 原生二进制
- **需求**: 跨网盘同步备份，NAS 用户核心工具

#### Pi-hole (#36)
- **技术**: Shell/PHP
- **打包**: Docker 或原生
- **需求**: AdGuardHome 的竞品，部分用户偏好

#### 1Panel (#52)
- **技术**: Go + Vue
- **打包**: Docker
- **需求**: 国产服务器管理面板，与 fnOS 互补而非竞争

---

## P1 - 中高优先级 (特定场景需求、打包中等难度)

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 说明 |
|---|------|------|--------|------|-------|------|
| 6 | **Tautulli** | ? | Python | [GitHub](https://github.com/Tautulli/Tautulli) | #74 | Plex 使用统计与通知 |
| 7 | **Seerr** | ? | Node.js | [GitHub](https://github.com/seerr-team/seerr) | #73 | Overseerr 新分支，媒体请求管理 |
| 8 | **Grafana** | ? | Go/Node | [GitHub](https://github.com/grafana/grafana) | #33 | 可视化监控仪表盘，配 Prometheus |
| 9 | **Prometheus** | ? | Go | [GitHub](https://github.com/prometheus/prometheus) | #35 | 时序数据库，系统监控核心 |
| 10 | **Loki** | ? | Go | [GitHub](https://github.com/grafana/loki) | #62 | 日志聚合系统，Grafana 生态 |
| 11 | **Home Assistant** | ? | Python | [GitHub](https://github.com/home-assistant/core) | #32 | 智能家居中枢，用户量巨大 |
| 12 | **n8n** | ? | Node.js | [GitHub](https://github.com/n8n-io/n8n) | #31 | 工作流自动化，类 Zapier |
| 13 | **Ntfy** | ? | Go | [GitHub](https://github.com/binwiederhier/ntfy) | #60 | 自托管推送通知，替代 Gotify |
| 14 | **Gitea** | ? | Go | [GitHub](https://github.com/go-gitea/gitea) | #39 | 轻量级 Git 服务器 |
| 15 | **WG-Easy** | ? | Node.js | [GitHub](https://github.com/wg-easy/wg-easy) | #66 | WireGuard VPN 管理界面 |
| 16 | **Headscale** | ? | Go | [GitHub](https://github.com/juanfont/headscale) | #47 | Tailscale 自托管服务端 |

---

## P2 - 中优先级 (特定用户群、打包较复杂)

| # | 应用 | 端口 | 技术栈 | 来源 | Issue | 说明 |
|---|------|------|--------|------|-------|------|
| 17 | **Duplicati** | ? | C# | [GitHub](https://github.com/duplicati/duplicati) | #69 | 加密备份工具，支持云存储 |
| 18 | **Frigate** | ? | Python | [GitHub](https://github.com/blakeblackshear/frigate) | #59 | AI 视频监控，支持物体检测 |
| 19 | **Glances** | ? | Python | [GitHub](https://github.com/nicolargo/glances) | #58 | 系统监控，Web UI 版 htop |
| 20 | **Cloudreve** | ? | Go | [GitHub](https://github.com/cloudreve/cloudreve) | #64 | 国产网盘系统 |
| 21 | **LibreChat** | ? | Node.js | [GitHub](https://github.com/danny-avila/LibreChat) | #51 | AI 聊天界面，支持多模型 |
| 22 | **LocalAI** | ? | Go/C++ | [GitHub](https://github.com/mudler/LocalAI) | #42 | 本地 AI 模型推理 |
| 23 | **Sunshine** | ? | C++ | [GitHub](https://github.com/LizardByte/Sunshine) | #50 | 游戏串流服务器，Moonlight 配对 |
| 24 | **Mattermost** | ? | Go | [GitHub](https://github.com/mattermost/mattermost) | #48 | 企业级即时通讯，Slack 替代 |
| 25 | **It-Tools** | ? | Node.js | [GitHub](https://github.com/CorentinTh/it-tools) | #46 | 开发者工具箱，JSON/YAML 转换等 |
| 26 | **AppFlowy** | ? | Rust/Dart | [GitHub](https://github.com/AppFlowy-IO/AppFlowy) | #34 | Notion 替代品，本地优先 |
| 27 | **Ente** | ? | Go/Dart | [GitHub](https://github.com/ente-io/ente) | #65 | 端到端加密照片备份 |
| 28 | **NetBird** | ? | Go | [GitHub](https://github.com/netbirdio/netbird) | #67 | Zero Trust VPN 平台 |

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

## 推荐开发顺序

### 第一阶段 (Go/C# 原生应用，快速迭代)
1. Alist (#41) - 中国用户刚需
2. Rclone (#37) - 通用工具
3. Jackett (#68) - *arr 生态补全
4. Ntfy (#60) - Gotify 替代

### 第二阶段 (监控与基础设施)
5. Grafana (#33) + Prometheus (#35) + Loki (#62)
6. Pi-hole (#36) - 与 AdGuardHome 并存
7. Glances (#58) - 轻量监控

### 第三阶段 (平台级应用)
8. 1Panel (#52) - 服务器管理
9. Gitea (#39) - Git 托管
10. Home Assistant (#32) - 智能家居

### 第四阶段 (AI/新兴工具)
11. LibreChat (#51) / LocalAI (#42)
12. It-Tools (#46)
13. Seerr (#73) - 观察 Overseerr 替代情况
