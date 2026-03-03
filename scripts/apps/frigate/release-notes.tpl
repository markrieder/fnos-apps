自动构建的 fnOS 安装包

- 基于 [Frigate ${VERSION}](https://github.com/blakeblackshear/frigate/releases/tag/v${VERSION})
- 平台: fnOS
- 默认端口: ${DEFAULT_PORT} (Web UI), 8554/tcp (RTSP), 1935/tcp (RTMP)${REVISION_NOTE}
- 主页: ${HOMEPAGE_URL}

> **注意**: Frigate 建议配置 GPU 加速，并在 /config/config.yml 中配置摄像头

${CHANGELOG}
**国内镜像**:
- [${FILE_PREFIX}_${FPK_VERSION}_x86.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_x86.fpk)
- [${FILE_PREFIX}_${FPK_VERSION}_arm.fpk](https://ghfast.top/https://github.com/conversun/fnos-apps/releases/download/${RELEASE_TAG}/${FILE_PREFIX}_${FPK_VERSION}_arm.fpk)
