自动构建的 fnOS 安装包

- 基于 [Ollama ${VERSION}](https://github.com/ollama/ollama/releases/tag/v${VERSION})
- 平台: fnOS
- 默认端口: ${DEFAULT_PORT}${REVISION_NOTE}
- 基于 Docker 容器运行，需要 fnOS Docker 环境
- 默认模型目录: `${TRIM_PKGVAR}/data`
- Ollama 仅提供 API 服务，建议搭配 Open WebUI 使用

${CHANGELOG}
**国内镜像**:
- [${FILE_PREFIX}_${FPK_VERSION}_x86.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_x86.fpk)
- [${FILE_PREFIX}_${FPK_VERSION}_arm.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_arm.fpk)
