# MosDNS for fnOS

每日自动同步 [MosDNS 官方](https://github.com/IrineSistworking/mosdns) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=mosdns) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://<NAS-IP>:5354`

## 说明

- 灵活的 DNS 分流与转发工具
- 支持 GeoIP、域名列表分流
- DNS 端口默认为 5354，可修改配置调整
- 数据存储在应用数据目录中

## 本地构建

```bash
./update_mosdns.sh                        # 最新版本，自动检测架构
./update_mosdns.sh --arch arm             # 指定架构
./update_mosdns.sh --help                 # 查看帮助
```

## 版本标签

- `mosdns/vX.Y.Z` — 首次发布
- `mosdns/vX.Y.Z-r2` — 同版本打包修订

## Credits

- [MosDNS](https://github.com/IrineSistworking/mosdns)
