# Grafana for fnOS

Grafana 是开源的可视化监控仪表盘平台，支持 Prometheus、Loki 等多种数据源。

## 默认配置

- 端口: 3010
- 数据目录: `${TRIM_PKGVAR}`

## Local Build

```bash
cd apps/grafana && bash ../../scripts/build-fpk.sh . app.tgz
```
