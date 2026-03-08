# Komga for fnOS

每日自动同步 [Komga 官方](https://github.com/gotson/komga) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=komga) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 -> 手动安装 -> 上传

**访问地址**: `http://<NAS-IP>:25600`

## 说明

- Komga 是漫画和电子书管理服务器，支持 CBZ/CBR/PDF/EPUB
- 默认配置目录为 `${TRIM_PKGVAR}/config`，默认库目录挂载为 `${TRIM_PKGVAR}/data`

## 本地构建

```bash
./update_komga.sh                    # 最新版本
./update_komga.sh 1.19.0            # 指定版本
./update_komga.sh --help            # 查看帮助
```

## Credits

- [Komga](https://github.com/gotson/komga) - Media server for comics and ebooks
