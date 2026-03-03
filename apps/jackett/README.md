# Jackett for fnOS

Jackett 是 Torrent 索引器代理服务，可为 Sonarr、Radarr 等工具提供统一搜索接口。

## 默认配置

- 端口: 9117
- 数据目录: `${TRIM_PKGVAR}/data`

## Local Build

```bash
cd apps/jackett && bash ../../scripts/build-fpk.sh . app.tgz
```
