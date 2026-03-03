# fnOS Apps

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
![Apps](https://img.shields.io/badge/apps-83-2ea44f)
![Platform](https://img.shields.io/badge/fnOS-third--party-orange)

面向飞牛 fnOS 的第三方应用打包仓库。自动跟踪上游版本，构建可直接安装的 `.fpk` 包。

> ⭐️ 如果觉得本项目对你有帮助，请右上角点个 Star！

## 应用一览

> 💡 推荐先安装 **fnOS Apps** 应用中心，可一键管理以下所有应用的安装与更新。

### 📦 应用中心

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/fnos-apps-store/fnos/ICON.PNG" width="28"> | [**fnOS Apps**](apps/fnos-apps-store/) | `8011` | 第三方应用中心，一键安装与更新 | [GitHub](https://github.com/conversun/fnos-store) | [Release][r-store] |

### 🎬 媒体服务

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/plex/fnos/ICON.PNG" width="28"> | [**Plex**](apps/plex/) | `32400` | 媒体服务器，支持硬件转码 | [官网](https://www.plex.tv) | [Release][r-plex] |
| <img src="apps/emby/fnos/ICON.PNG" width="28"> | [**Emby**](apps/emby/) | `8096` | 媒体管理与流式传输 | [官网](https://emby.media) | [Release][r-emby] |
| <img src="apps/jellyfin/fnos/ICON.PNG" width="28"> | [**Jellyfin**](apps/jellyfin/) | `8097` | 开源媒体系统，内置 FFmpeg | [官网](https://jellyfin.org) | [Release][r-jellyfin] |
| <img src="apps/navidrome/fnos/ICON.PNG" width="28"> | [**Navidrome**](apps/navidrome/) | `4533` | 音乐流媒体服务器 | [官网](https://www.navidrome.org) | [Release][r-navidrome] |
| <img src="apps/koel/fnos/ICON.PNG" width="28"> | [**Koel**](apps/koel/) | `8060` | 个人音乐流媒体，默认账号 `admin@koel.dev/KoelIsCool` | [GitHub](https://github.com/koel/koel) | [Release][r-koel] |
| <img src="apps/immich/fnos/ICON.PNG" width="28"> | [**Immich**](apps/immich/) | `2283` | 自托管照片/视频备份，支持人脸识别 | [GitHub](https://github.com/immich-app/immich) | [Release][r-immich] |
| <img src="apps/kavita/fnos/ICON.PNG" width="28"> | [**Kavita**](apps/kavita/) | `5000` | 漫画/电子书阅读 | [GitHub](https://github.com/Kareadita/Kavita) | [Release][r-kavita] |
| <img src="apps/tinymediamanager/fnos/ICON.PNG" width="28"> | [**tinyMediaManager**](apps/tinymediamanager/) | `5800` | 影视元数据管理 | [官网](https://www.tinymediamanager.org) | [Release][r-tmm] |
| <img src="apps/photoprism/fnos/ICON.PNG" width="28"> | [**PhotoPrism**](apps/photoprism/) | `2342` | AI 驱动的照片管理 | [官网](https://photoprism.app) | [Release][r-photoprism] |
| <img src="apps/jellyseerr/fnos/ICON.PNG" width="28"> | [**Jellyseerr**](apps/jellyseerr/) | `5055` | Jellyfin/Plex 媒体请求管理 | [GitHub](https://github.com/Fallenbagel/jellyseerr) | [Release][r-jellyseerr] |
| <img src="apps/tautulli/fnos/ICON.PNG" width="28"> | [**Tautulli**](apps/tautulli/) | `8181` | Plex 使用统计与监控 | [官网](https://tautulli.com) | [Release][r-tautulli] |
| <img src="apps/seerr/fnos/ICON.PNG" width="28"> | [**Seerr**](apps/seerr/) | `5055` | Overseerr 社区分支，媒体请求管理 | [GitHub](https://github.com/seerr-team/seerr) | [Release][r-seerr] |
| <img src="apps/ente/fnos/ICON.PNG" width="28"> | [**Ente**](apps/ente/) | `8510` | 端到端加密照片备份 | [官网](https://ente.io) | [Release][r-ente] |
| <img src="apps/sunshine/fnos/ICON.PNG" width="28"> | [**Sunshine**](apps/sunshine/) | `47990` | 游戏串流服务器，配合 Moonlight 使用 | [GitHub](https://github.com/LizardByte/Sunshine) | [Release][r-sunshine] |
| <img src="apps/frigate/fnos/ICON.PNG" width="28"> | [**Frigate**](apps/frigate/) | `8971` | AI 视频监控，支持实时物体检测 | [官网](https://frigate.video) | [Release][r-frigate] |

### ⬇️ 下载工具

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/qbittorrent/fnos/ICON.PNG" width="28"> | [**qBittorrent**](apps/qbittorrent/) | `8085` | BitTorrent 客户端，默认账号 `admin/adminadmin` | [官网](https://www.qbittorrent.org) | [Release][r-qb] |
| <img src="apps/transmission/fnos/ICON.PNG" width="28"> | [**Transmission**](apps/transmission/) | `9091` | 轻量级 BitTorrent 客户端 | [官网](https://transmissionbt.com) | [Release][r-transmission] |
| <img src="apps/gopeed/fnos/ICON.PNG" width="28"> | [**Gopeed**](apps/gopeed/) | `9999` | 高速下载器，支持 HTTP/BT/Magnet | [官网](https://gopeed.com) | [Release][r-gopeed] |
| <img src="apps/syncthing/fnos/ICON.PNG" width="28"> | [**Syncthing**](apps/syncthing/) | `8384` | 文件同步工具，P2P 架构 | [官网](https://syncthing.net) | [Release][r-syncthing] |
| <img src="apps/alist/fnos/ICON.PNG" width="28"> | [**Alist**](apps/alist/) | `5246` | 网盘聚合工具，挂载阿里云盘/百度盘等 | [GitHub](https://github.com/AlistGo/alist) | [Release][r-alist] |
| <img src="apps/rclone/fnos/ICON.PNG" width="28"> | [**Rclone**](apps/rclone/) | `5572` | 云存储同步工具，支持 50+ 存储后端 | [官网](https://rclone.org) | [Release][r-rclone] |
| <img src="apps/cloudreve/fnos/ICON.PNG" width="28"> | [**Cloudreve**](apps/cloudreve/) | `5212` | 国产云盘系统 | [官网](https://cloudreve.org) | [Release][r-cloudreve] |

### 📚 内容管理

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/ani-rss/fnos/ICON.PNG" width="28"> | [**ANI-RSS**](apps/ani-rss/) | `7789` | 动漫 RSS 自动追番，默认账号 `admin/admin` | [GitHub](https://github.com/wushuo894/ani-rss) | [Release][r-ani] |
| <img src="apps/auto-bangumi/fnos/ICON.PNG" width="28"> | [**AutoBangumi**](apps/auto-bangumi/) | `7892` | RSS 自动追番下载整理，默认账号 `admin/adminadmin` | [GitHub](https://github.com/EstrellaXD/Auto_Bangumi) | [Release][r-ab] |
| <img src="apps/audiobookshelf/fnos/ICON.PNG" width="28"> | [**Audiobookshelf**](apps/audiobookshelf/) | `13378` | 有声书和播客服务器 | [官网](https://www.audiobookshelf.org) | [Release][r-abs] |
| <img src="apps/moviepilot/fnos/ICON.PNG" width="28"> | [**MoviePilot**](apps/moviepilot/) | `3000` | 影视自动化管理 | [GitHub](https://github.com/jxxghp/MoviePilot) | [Release][r-mp] |
| <img src="apps/openlist/fnos/ICON.PNG" width="28"> | [**OpenList**](apps/openlist/) | `5244` | 文件列表/WebDAV | [GitHub](https://github.com/OpenListTeam/OpenList) | [Release][r-openlist] |
| <img src="apps/kodbox/fnos/ICON.PNG" width="28"> | [**KodBox**](apps/kodbox/) | `8500` | 私有云存储/在线文档协作 | [官网](https://kodcloud.com) | [Release][r-kodbox] |
| <img src="apps/chinesesubfinder/fnos/ICON.PNG" width="28"> | [**ChineseSubFinder**](apps/chinesesubfinder/) | `19035` | 中文字幕自动下载 | [GitHub](https://github.com/ChineseSubFinder/ChineseSubFinder) | [Release][r-csf] |
| <img src="apps/freshrss/fnos/ICON.PNG" width="28"> | [**FreshRSS**](apps/freshrss/) | `8082` | 自托管 RSS 阅读器 | [官网](https://freshrss.org) | [Release][r-freshrss] |
| <img src="apps/miniflux/fnos/ICON.PNG" width="28"> | [**Miniflux**](apps/miniflux/) | `8084` | 极简 RSS 阅读器 | [官网](https://miniflux.app) | [Release][r-miniflux] |
| <img src="apps/linkwarden/fnos/ICON.PNG" width="28"> | [**Linkwarden**](apps/linkwarden/) | `3005` | 协作式书签管理 | [官网](https://linkwarden.app) | [Release][r-linkwarden] |
| <img src="apps/wikijs/fnos/ICON.PNG" width="28"> | [**Wiki.js**](apps/wikijs/) | `3080` | 现代化 Wiki 引擎 | [官网](https://js.wiki) | [Release][r-wikijs] |
| <img src="apps/mealie/fnos/ICON.PNG" width="28"> | [**Mealie**](apps/mealie/) | `9925` | 食谱管理与膳食计划 | [官网](https://mealie.io) | [Release][r-mealie] |
| <img src="apps/paperless-ngx/fnos/ICON.PNG" width="28"> | [**Paperless-ngx**](apps/paperless-ngx/) | `8000` | 文档数字化管理，OCR 支持 | [官网](https://docs.paperless-ngx.com) | [Release][r-paperless] |
| <img src="apps/appflowy/fnos/ICON.PNG" width="28"> | [**AppFlowy**](apps/appflowy/) | `8500` | Notion 开源替代品，协作文档平台 | [官网](https://appflowy.io) | [Release][r-appflowy] |

### 🎵 媒体自动化

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/sonarr/fnos/ICON.PNG" width="28"> | [**Sonarr**](apps/sonarr/) | `8989` | 电视剧自动下载管理 | [官网](https://sonarr.tv) | [Release][r-sonarr] |
| <img src="apps/radarr/fnos/ICON.PNG" width="28"> | [**Radarr**](apps/radarr/) | `7878` | 电影自动下载管理 | [官网](https://radarr.video) | [Release][r-radarr] |
| <img src="apps/lidarr/fnos/ICON.PNG" width="28"> | [**Lidarr**](apps/lidarr/) | `8686` | 音乐自动下载管理 | [官网](https://lidarr.audio) | [Release][r-lidarr] |
| <img src="apps/readarr/fnos/ICON.PNG" width="28"> | [**Readarr**](apps/readarr/) | `8787` | 电子书自动下载管理 | [官网](https://readarr.com) | [Release][r-readarr] |
| <img src="apps/prowlarr/fnos/ICON.PNG" width="28"> | [**Prowlarr**](apps/prowlarr/) | `9696` | 索引器管理，整合 Sonarr/Radarr 等 | [官网](https://prowlarr.com) | [Release][r-prowlarr] |
| <img src="apps/bazarr/fnos/ICON.PNG" width="28"> | [**Bazarr**](apps/bazarr/) | `6767` | 字幕自动下载管理 | [官网](https://www.bazarr.media) | [Release][r-bazarr] |
| <img src="apps/jackett/fnos/ICON.PNG" width="28"> | [**Jackett**](apps/jackett/) | `9117` | Torrent 索引器代理，Prowlarr 替代 | [GitHub](https://github.com/Jackett/Jackett) | [Release][r-jackett] |

### 🔧 系统工具

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/sun-panel/fnos/ICON.PNG" width="28"> | [**Sun-Panel**](apps/sun-panel/) | `3002` | 服务器/NAS 导航面板 | [官网](https://doc.sun-panel.top/zh_cn) | [Release][r-sunpanel] |
| <img src="apps/homepage/fnos/ICON.PNG" width="28"> | [**Homepage**](apps/homepage/) | `3003` | 高度可定制的应用仪表盘 | [官网](https://gethomepage.dev) | [Release][r-homepage] |
| <img src="apps/homarr/fnos/ICON.PNG" width="28"> | [**Homarr**](apps/homarr/) | `7575` | 服务器仪表盘与应用管理 | [官网](https://homarr.dev) | [Release][r-homarr] |
| <img src="apps/certimate/fnos/ICON.PNG" width="28"> | [**Certimate**](apps/certimate/) | `8090` | SSL 证书管理 | [GitHub](https://github.com/certimate-go/certimate) | [Release][r-certimate] |
| <img src="apps/vaultwarden/fnos/ICON.PNG" width="28"> | [**Vaultwarden**](apps/vaultwarden/) | `8880` | 密码管理（Bitwarden 兼容） | [GitHub](https://github.com/dani-garcia/vaultwarden) | [Release][r-vw] |
| <img src="apps/nginx/fnos/ICON.PNG" width="28"> | [**Nginx**](apps/nginx/) | `8888` | HTTP 服务与反向代理 | [官网](https://nginx.org) | [Release][r-nginx] |
| <img src="apps/nginx-ui/fnos/ICON.PNG" width="28"> | [**Nginx UI**](apps/nginx-ui/) | `9000` | Nginx 可视化管理面板，内置 Nginx 引擎 | [GitHub](https://github.com/0xJacky/nginx-ui) | [Release][r-nginx-ui] |
| <img src="apps/gotify/fnos/ICON.PNG" width="28"> | [**Gotify**](apps/gotify/) | `8070` | 自托管推送通知服务 | [官网](https://gotify.net) | [Release][r-gotify] |
| <img src="apps/ddns-go/fnos/ICON.PNG" width="28"> | [**DDNS-GO**](apps/ddns-go/) | `9876` | 动态 DNS 解析客户端 | [GitHub](https://github.com/jeessy2/ddns-go) | [Release][r-ddnsgo] |
| <img src="apps/wolgoweb/fnos/ICON.PNG" width="28"> | [**WolGoWeb**](apps/wolgoweb/) | `9090` | 网络唤醒 (Wake-on-LAN) 管理 | [GitHub](https://github.com/xiaoxinpro/WolGoWeb) | [Release][r-wolgoweb] |
| <img src="apps/adguardhome/fnos/ICON.PNG" width="28"> | [**AdGuardHome**](apps/adguardhome/) | `3080` | 全网广告拦截与 DNS 管理 | [官网](https://adguard.com/adguard-home/overview.html) | [Release][r-adguardhome] |
| <img src="apps/uptime-kuma/fnos/ICON.PNG" width="28"> | [**Uptime Kuma**](apps/uptime-kuma/) | `3001` | 自托管服务监控 | [GitHub](https://github.com/louislam/uptime-kuma) | [Release][r-uptimekuma] |
| <img src="apps/beszel/fnos/ICON.PNG" width="28"> | [**Beszel**](apps/beszel/) | `18090` | 轻量级服务器监控 | [GitHub](https://github.com/henrygd/beszel) | [Release][r-beszel] |
| <img src="apps/filebrowser/fnos/ICON.PNG" width="28"> | [**FileBrowser**](apps/filebrowser/) | `8089` | Web 文件管理器 | [官网](https://filebrowser.org) | [Release][r-filebrowser] |
| <img src="apps/stirling-pdf/fnos/ICON.PNG" width="28"> | [**Stirling-PDF**](apps/stirling-pdf/) | `18080` | 自托管 PDF 工具箱 | [官网](https://stirlingpdf.io) | [Release][r-stirlingpdf] |
| <img src="apps/actual-budget/fnos/ICON.PNG" width="28"> | [**Actual Budget**](apps/actual-budget/) | `5006` | 自托管个人财务管理 | [官网](https://actualbudget.org) | [Release][r-actual] |
| <img src="apps/lucky/fnos/ICON.PNG" width="28"> | [**Lucky**](apps/lucky/) | `16601` | DDNS/反向代理/端口转发多功能工具 | [官网](https://lucky666.cn) | [Release][r-lucky] |
| <img src="apps/1panel/fnos/ICON.PNG" width="28"> | [**1Panel**](apps/1panel/) | `10086` | 开源服务器管理面板 | [官网](https://1panel.cn) | [Release][r-1panel] |
| <img src="apps/grafana/fnos/ICON.PNG" width="28"> | [**Grafana**](apps/grafana/) | `3010` | 可视化监控仪表盘 | [官网](https://grafana.com) | [Release][r-grafana] |
| <img src="apps/prometheus/fnos/ICON.PNG" width="28"> | [**Prometheus**](apps/prometheus/) | `9090` | 时序数据库与监控系统 | [官网](https://prometheus.io) | [Release][r-prometheus] |
| <img src="apps/loki/fnos/ICON.PNG" width="28"> | [**Loki**](apps/loki/) | `3100` | 日志聚合系统，Grafana 生态 | [GitHub](https://github.com/grafana/loki) | [Release][r-loki] |
| <img src="apps/glances/fnos/ICON.PNG" width="28"> | [**Glances**](apps/glances/) | `61208` | 系统监控，Web UI 版 htop | [GitHub](https://github.com/nicolargo/glances) | [Release][r-glances] |
| <img src="apps/n8n/fnos/ICON.PNG" width="28"> | [**n8n**](apps/n8n/) | `5678` | 工作流自动化工具 | [官网](https://n8n.io) | [Release][r-n8n] |
| <img src="apps/ntfy/fnos/ICON.PNG" width="28"> | [**Ntfy**](apps/ntfy/) | `2586` | 自托管推送通知服务 | [官网](https://ntfy.sh) | [Release][r-ntfy] |
| <img src="apps/gitea/fnos/ICON.PNG" width="28"> | [**Gitea**](apps/gitea/) | `3003` | 轻量级 Git 代码托管 | [官网](https://gitea.com) | [Release][r-gitea] |
| <img src="apps/duplicati/fnos/ICON.PNG" width="28"> | [**Duplicati**](apps/duplicati/) | `8200` | 加密备份工具 | [官网](https://duplicati.com) | [Release][r-duplicati] |
| <img src="apps/it-tools/fnos/ICON.PNG" width="28"> | [**IT-Tools**](apps/it-tools/) | `8280` | 开发者工具箱 | [官网](https://it-tools.tech) | [Release][r-it-tools] |
| <img src="apps/mattermost/fnos/ICON.PNG" width="28"> | [**Mattermost**](apps/mattermost/) | `8065` | 企业即时通讯，Slack 替代 | [官网](https://mattermost.com) | [Release][r-mattermost] |
| <img src="apps/homeassistant/fnos/ICON.PNG" width="28"> | [**Home Assistant**](apps/homeassistant/) | `8123` | 智能家居中枢平台 | [官网](https://www.home-assistant.io) | [Release][r-homeassistant] |

### 🤖 AI

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/openclaw/fnos/ICON.PNG" width="28"> | [**OpenClaw**](apps/openclaw/) | `18789` | AI 智能体网关，支持多渠道接入 | [官网](https://docs.openclaw.ai) | [Release][r-openclaw] |
| <img src="apps/localai/fnos/ICON.PNG" width="28"> | [**LocalAI**](apps/localai/) | `8180` | 本地 AI 推理，兼容 OpenAI API | [官网](https://localai.io) | [Release][r-localai] |
| <img src="apps/librechat/fnos/ICON.PNG" width="28"> | [**LibreChat**](apps/librechat/) | `3080` | AI 聊天界面，支持多模型 | [官网](https://librechat.ai) | [Release][r-librechat] |

### 🌐 网络工具

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/smartdns/fnos/ICON.PNG" width="28"> | [**SmartDNS**](apps/smartdns/) | `6580` | 本地 DNS 加速与优选 | [GitHub](https://github.com/pymumu/smartdns) | [Release][r-smartdns] |
| <img src="apps/mosdns/fnos/ICON.PNG" width="28"> | [**MosDNS**](apps/mosdns/) | `5353` | DNS 转发与分流 | [GitHub](https://github.com/IrineSistiana/mosdns) | [Release][r-mosdns] |
| <img src="apps/pihole/fnos/ICON.PNG" width="28"> | [**Pi-hole**](apps/pihole/) | `8053` | 全网广告拦截 (DNS) | [官网](https://pi-hole.net) | [Release][r-pihole] |
| <img src="apps/wg-easy/fnos/ICON.PNG" width="28"> | [**WG-Easy**](apps/wg-easy/) | `51821` | WireGuard VPN 管理界面 | [GitHub](https://github.com/wg-easy/wg-easy) | [Release][r-wg-easy] |
| <img src="apps/headscale/fnos/ICON.PNG" width="28"> | [**Headscale**](apps/headscale/) | `8480` | Tailscale 自托管控制服务器 | [GitHub](https://github.com/juanfont/headscale) | [Release][r-headscale] |
| <img src="apps/netbird/fnos/ICON.PNG" width="28"> | [**NetBird**](apps/netbird/) | `8820` | Zero Trust VPN 平台 | [官网](https://netbird.io) | [Release][r-netbird] |

### 🌐 浏览器

| | App | 端口 | 说明 | 来源 | 下载 |
|:---:|---|---:|---|:---:|:---:|
| <img src="apps/firefox/fnos/ICON.PNG" width="28"> | [**Firefox**](apps/firefox/) | `5801` | 远程浏览器，支持中文 | [GitHub](https://github.com/jlesage/docker-firefox) | [Release][r-firefox] |
| <img src="apps/chromium/fnos/ICON.PNG" width="28"> | [**Chromium**](apps/chromium/) | `5802` | 远程浏览器，支持中文 | [GitHub](https://github.com/jlesage/docker-chromium) | [Release][r-chromium] |

## 反馈与请求

- 新应用请求：[Open App Request](https://github.com/conversun/fnos-apps/issues/new?template=new-app-request.yml)
- 问题反馈：[Open Bug Report](https://github.com/conversun/fnos-apps/issues/new?template=bug-report.yml)

## 快速开始

### 安装

1. 下载对应 App 的 [Release](https://github.com/conversun/fnos-apps/releases) 页面中的 `.fpk` 文件
2. 在 fnOS 应用中心选择「手动安装」
3. 上传 `.fpk` 并完成安装

### 本地构建

```bash
# 构建单个应用（以 plex 为例）
cd apps/plex && ./update_plex.sh

# 通用格式
cd apps/<app> && ./update_<app>.sh
```

构建产物统一输出到仓库根目录 `dist/`。

## 项目结构

```text
fnos-apps/
├── apps/                    # 各应用的 fnOS 包定义与构建脚本
├── shared/                  # 通用生命周期脚本与向导模板
├── scripts/
│   ├── build-fpk.sh         # 通用 fpk 打包器
│   ├── new-app.sh           # 新应用脚手架
│   ├── apps/<app>/          # 每个应用的构建合约
│   └── ci/resolve-release-tag.sh
└── .github/workflows/       # 入口 workflow + 可复用构建 workflow
```

## 新增应用（维护者）

```bash
./scripts/new-app.sh <app-slug> "<display-name>" <port>
# example
./scripts/new-app.sh jellyfin "Jellyfin" 8097
```

推荐流程：

1. 在 `apps/<app>/` 完成 fnOS 清单和启动脚本
2. 在 `scripts/apps/<app>/` 完成版本探测与 `app.tgz` 组装
3. CI 自动发现新应用，无需手动创建 workflow 文件

## CI/CD 设计

- 单一入口 `build-apps.yml` 自动发现 `apps/` 下所有应用，动态矩阵构建
- 统一使用 `scripts/build-fpk.sh` 打包，减少各应用行为漂移
- 统一使用 `reusable-build-app.yml` 实现版本检查、矩阵构建、发布
- 标签策略由 `scripts/ci/resolve-release-tag.sh` 管理，支持 `-r2/-r3` 修订版自动递增
- 日常构建由定时任务和手动触发驱动，push 触发仅构建变更的应用

## 变更记录

项目变更记录请查看 [CHANGELOG.md](CHANGELOG.md)。

## 致谢

- 应用图标来自 [Dashboard Icons](https://dashboardicons.com)（MIT License）

## 安全与透明

- 本仓库仅下载并重打包官方发布内容，不修改上游业务逻辑
- 当前应用均按非 root 用户运行（提升默认安全性）
- 构建脚本、CI 流程与发布记录均公开可审计

<!-- Release Links -->
[r-store]: https://github.com/conversun/fnos-apps/releases?q=fnos-apps-store
[r-plex]: https://github.com/conversun/fnos-apps/releases?q=plex
[r-emby]: https://github.com/conversun/fnos-apps/releases?q=emby
[r-jellyfin]: https://github.com/conversun/fnos-apps/releases?q=jellyfin
[r-navidrome]: https://github.com/conversun/fnos-apps/releases?q=navidrome
[r-kavita]: https://github.com/conversun/fnos-apps/releases?q=kavita
[r-tmm]: https://github.com/conversun/fnos-apps/releases?q=tinymediamanager
[r-qb]: https://github.com/conversun/fnos-apps/releases?q=qbittorrent
[r-transmission]: https://github.com/conversun/fnos-apps/releases?q=transmission
[r-gopeed]: https://github.com/conversun/fnos-apps/releases?q=gopeed
[r-syncthing]: https://github.com/conversun/fnos-apps/releases?q=syncthing
[r-ani]: https://github.com/conversun/fnos-apps/releases?q=ani-rss
[r-abs]: https://github.com/conversun/fnos-apps/releases?q=audiobookshelf
[r-mp]: https://github.com/conversun/fnos-apps/releases?q=moviepilot
[r-openlist]: https://github.com/conversun/fnos-apps/releases?q=openlist
[r-kodbox]: https://github.com/conversun/fnos-apps/releases?q=kodbox
[r-sunpanel]: https://github.com/conversun/fnos-apps/releases?q=sun-panel
[r-certimate]: https://github.com/conversun/fnos-apps/releases?q=certimate
[r-vw]: https://github.com/conversun/fnos-apps/releases?q=vaultwarden
[r-nginx]: https://github.com/conversun/fnos-apps/releases?q=nginx
[r-nginx-ui]: https://github.com/conversun/fnos-apps/releases?q=nginx-ui
[r-gotify]: https://github.com/conversun/fnos-apps/releases?q=gotify
[r-ddnsgo]: https://github.com/conversun/fnos-apps/releases?q=ddns-go
[r-wolgoweb]: https://github.com/conversun/fnos-apps/releases?q=wolgoweb
[r-adguardhome]: https://github.com/conversun/fnos-apps/releases?q=adguardhome
[r-firefox]: https://github.com/conversun/fnos-apps/releases?q=firefox
[r-chromium]: https://github.com/conversun/fnos-apps/releases?q=chromium
[r-ab]: https://github.com/conversun/fnos-apps/releases?q=auto-bangumi
[r-immich]: https://github.com/conversun/fnos-apps/releases?q=immich
[r-koel]: https://github.com/conversun/fnos-apps/releases?q=koel
[r-photoprism]: https://github.com/conversun/fnos-apps/releases?q=photoprism
[r-jellyseerr]: https://github.com/conversun/fnos-apps/releases?q=jellyseerr
[r-csf]: https://github.com/conversun/fnos-apps/releases?q=chinesesubfinder
[r-freshrss]: https://github.com/conversun/fnos-apps/releases?q=freshrss
[r-miniflux]: https://github.com/conversun/fnos-apps/releases?q=miniflux
[r-linkwarden]: https://github.com/conversun/fnos-apps/releases?q=linkwarden
[r-wikijs]: https://github.com/conversun/fnos-apps/releases?q=wikijs
[r-mealie]: https://github.com/conversun/fnos-apps/releases?q=mealie
[r-paperless]: https://github.com/conversun/fnos-apps/releases?q=paperless-ngx
[r-sonarr]: https://github.com/conversun/fnos-apps/releases?q=sonarr
[r-radarr]: https://github.com/conversun/fnos-apps/releases?q=radarr
[r-lidarr]: https://github.com/conversun/fnos-apps/releases?q=lidarr
[r-readarr]: https://github.com/conversun/fnos-apps/releases?q=readarr
[r-prowlarr]: https://github.com/conversun/fnos-apps/releases?q=prowlarr
[r-bazarr]: https://github.com/conversun/fnos-apps/releases?q=bazarr
[r-homepage]: https://github.com/conversun/fnos-apps/releases?q=homepage
[r-homarr]: https://github.com/conversun/fnos-apps/releases?q=homarr
[r-uptimekuma]: https://github.com/conversun/fnos-apps/releases?q=uptime-kuma
[r-beszel]: https://github.com/conversun/fnos-apps/releases?q=beszel
[r-filebrowser]: https://github.com/conversun/fnos-apps/releases?q=filebrowser
[r-stirlingpdf]: https://github.com/conversun/fnos-apps/releases?q=stirling-pdf
[r-actual]: https://github.com/conversun/fnos-apps/releases?q=actual-budget
[r-lucky]: https://github.com/conversun/fnos-apps/releases?q=lucky
[r-openclaw]: https://github.com/conversun/fnos-apps/releases?q=openclaw
[r-smartdns]: https://github.com/conversun/fnos-apps/releases?q=smartdns
[r-mosdns]: https://github.com/conversun/fnos-apps/releases?q=mosdns
[r-tautulli]: https://github.com/conversun/fnos-apps/releases?q=tautulli
[r-seerr]: https://github.com/conversun/fnos-apps/releases?q=seerr
[r-ente]: https://github.com/conversun/fnos-apps/releases?q=ente
[r-sunshine]: https://github.com/conversun/fnos-apps/releases?q=sunshine
[r-frigate]: https://github.com/conversun/fnos-apps/releases?q=frigate
[r-alist]: https://github.com/conversun/fnos-apps/releases?q=alist
[r-rclone]: https://github.com/conversun/fnos-apps/releases?q=rclone
[r-cloudreve]: https://github.com/conversun/fnos-apps/releases?q=cloudreve
[r-appflowy]: https://github.com/conversun/fnos-apps/releases?q=appflowy
[r-jackett]: https://github.com/conversun/fnos-apps/releases?q=jackett
[r-1panel]: https://github.com/conversun/fnos-apps/releases?q=1panel
[r-grafana]: https://github.com/conversun/fnos-apps/releases?q=grafana
[r-prometheus]: https://github.com/conversun/fnos-apps/releases?q=prometheus
[r-loki]: https://github.com/conversun/fnos-apps/releases?q=loki
[r-glances]: https://github.com/conversun/fnos-apps/releases?q=glances
[r-n8n]: https://github.com/conversun/fnos-apps/releases?q=n8n
[r-ntfy]: https://github.com/conversun/fnos-apps/releases?q=ntfy
[r-gitea]: https://github.com/conversun/fnos-apps/releases?q=gitea
[r-duplicati]: https://github.com/conversun/fnos-apps/releases?q=duplicati
[r-it-tools]: https://github.com/conversun/fnos-apps/releases?q=it-tools
[r-mattermost]: https://github.com/conversun/fnos-apps/releases?q=mattermost
[r-homeassistant]: https://github.com/conversun/fnos-apps/releases?q=homeassistant
[r-localai]: https://github.com/conversun/fnos-apps/releases?q=localai
[r-librechat]: https://github.com/conversun/fnos-apps/releases?q=librechat
[r-pihole]: https://github.com/conversun/fnos-apps/releases?q=pihole
[r-wg-easy]: https://github.com/conversun/fnos-apps/releases?q=wg-easy
[r-headscale]: https://github.com/conversun/fnos-apps/releases?q=headscale
[r-netbird]: https://github.com/conversun/fnos-apps/releases?q=netbird
