# Node-RED for fnOS

每日自动同步 [Node-RED 官方](https://github.com/node-red/node-red) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=node-red) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 -> 手动安装 -> 上传

**访问地址**: `http://<NAS-IP>:1880`

## 说明

- Node-RED 是可视化流程编排工具，适合 IoT 和智能家居自动化
- 默认数据目录为 `${TRIM_PKGVAR}/data`

## 本地构建

```bash
./update_node-red.sh                    # 最新版本
./update_node-red.sh 4.0.9             # 指定版本
./update_node-red.sh --help            # 查看帮助
```

## Credits

- [Node-RED](https://github.com/node-red/node-red) - Low-code programming for event-driven applications
