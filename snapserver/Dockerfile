ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk update
RUN apk upgrade
RUN apk add --no-cache protobuf-dev
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache snapcast 

# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
