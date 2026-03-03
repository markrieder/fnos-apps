# Loki for fnOS

每日自动同步 [Loki 官方](https://grafana.com/oss/loki/) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=loki) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:3100`

## 说明

- Loki 是 Grafana 生态中的日志聚合系统
- 面向高效日志存储与检索，适合自托管日志平台
- 数据与配置存储在应用数据目录中

## 本地构建

```bash
./update_loki.sh                        # 最新版本，自动检测架构
./update_loki.sh --arch arm             # 指定架构
./update_loki.sh --arch arm 3.2.0       # 指定版本
./update_loki.sh --help                 # 查看帮助
```

## 版本标签

- `loki/v3.2.0` - 首次发布
- `loki/v3.2.0-r2` - 同版本打包修订

## Credits

- [Loki](https://grafana.com/oss/loki/) - Like Prometheus, but for logs
