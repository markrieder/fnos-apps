# Wiki.js for fnOS

每日自动同步 [Wiki.js 官方](https://js.wiki) 最新版本并构建 `.fpk` 安装包。

## 下载

从 [Releases](https://github.com/conversun/fnos-apps/releases?q=wikijs) 下载最新的 `.fpk` 文件。

## 安装

1. 根据设备架构下载对应的 `.fpk` 文件
2. fnOS 应用管理 → 手动安装 → 上传

**访问地址**: `http://&lt;NAS-IP&gt;:3110`

## 说明

- 自托管知识库和 Wiki 系统，支持 Markdown 编辑
- 内置权限管理，支持多用户协作和访问控制
- 支持全文搜索、页面历史和版本对比
- 基于 Docker 部署，首次启动需要拉取镜像

## 本地构建

```bash
cd apps/wikijs && bash ../../scripts/build-fpk.sh . app.tgz
```

## Credits

- [Wiki.js](https://js.wiki)
