自动构建的 fnOS 安装包

- 基于 [Duplicati ${VERSION}](https://github.com/duplicati/duplicati/releases/tag/v${VERSION})
- 平台: fnOS
- 默认端口: ${DEFAULT_PORT}${REVISION_NOTE}
- 默认数据目录: `${TRIM_PKGVAR}/config`、`${TRIM_PKGVAR}/backups`
- 运行要求: fnOS 系统需安装并启用 Docker 环境

${CHANGELOG}
**国内镜像**:
- [${FILE_PREFIX}_${FPK_VERSION}_x86.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_x86.fpk)
- [${FILE_PREFIX}_${FPK_VERSION}_arm.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_arm.fpk)
