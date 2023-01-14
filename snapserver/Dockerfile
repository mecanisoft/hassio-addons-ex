ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk add --no-cache protobuf-dev
RUN apk add --no-cache dbus
RUN apk add --no-cache alsa-utils 
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache portaudio-dev
RUN apk add --no-cache snapcast




# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
