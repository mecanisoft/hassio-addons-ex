ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk add --no-cache protobuf-dev
RUN apk add --update --no-cache pulseaudio pulseaudio-alsa pulseaudio-utils alsa-lib
RUN apk add --no-cache snapcast 


# Copy root filesystem
COPY rootfs /

ENTRYPOINT ["/usr/bin/pulseaudio", "--system", "--disallow-exit", "--disallow-module-loading", "--daemonize=no"]

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
