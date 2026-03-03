自动构建的 fnOS 安装包

- 基于 [Mattermost ${VERSION}](https://github.com/mattermost/mattermost/releases/tag/v${VERSION})
- 基于 Docker 容器运行，需要 fnOS Docker 环境
- 平台: fnOS
- 默认端口: 8065
- 包含服务: Mattermost, PostgreSQL${REVISION_NOTE}
${CHANGELOG}
**国内镜像**:
- [${FILE_PREFIX}_${FPK_VERSION}_x86.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_x86.fpk)
- [${FILE_PREFIX}_${FPK_VERSION}_arm.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_arm.fpk)
