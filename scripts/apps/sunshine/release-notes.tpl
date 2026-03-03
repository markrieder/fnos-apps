自动构建的 fnOS 安装包

- 基于 [Sunshine ${VERSION}](https://github.com/LizardByte/Sunshine/releases/tag/v${VERSION})
- 平台: fnOS
- 默认端口: ${DEFAULT_PORT}${REVISION_NOTE}
- 附加串流端口: 47984-47989/tcp, 48010/tcp, 47998-48000/udp, 48002/udp, 48010/udp
- 运行要求: fnOS 系统需安装并启用 Docker 环境

${CHANGELOG}
**国内镜像**:
- [${FILE_PREFIX}_${FPK_VERSION}_x86.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_x86.fpk)
- [${FILE_PREFIX}_${FPK_VERSION}_arm.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_arm.fpk)
