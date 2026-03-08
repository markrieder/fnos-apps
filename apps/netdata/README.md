# Netdata for fnOS

每日自动同步 [Netdata 官方](https://github.com/netdata/netdata) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=netdata) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 -> 手动安装 -> 上传

**访问地址**: `http://<NAS-IP>:19999`

## 说明

- Netdata 提供实时系统监控面板，每秒采集关键运行指标
- 默认挂载主机 `/proc`、`/sys`、Docker Socket 用于监控

## 本地构建

```bash
./update_netdata.sh                    # 最新版本
./update_netdata.sh 2.4.0             # 指定版本
./update_netdata.sh --help            # 查看帮助
```

## Credits

- [Netdata](https://github.com/netdata/netdata) - Real-time performance monitoring
