ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8


RUN echo -e "@edge https://dl-cdn.alpinelinux.org/alpine/edge/main\n@edgecommunity https://dl-cdn.alpinelinux.org/alpine/edge/community\n@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN  apk update
RUN apk add --no-cache dbus
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache libdaemon
RUN apk add --no-cache popt
RUN apk add --no-cache soxr
RUN apk add --no-cache avahi
RUN apk add --no-cache libconfig

RUN apk add --no-cache libstdc++@edge
RUN apk add --no-cache snapcast@edgecommunity
RUN apk add --no-cache libtool
# RUN apk add --no-cache pulseaudio 
# RUN apk add --no-cache pulseaudio-utils


# Copy root filesystem
COPY rootfs /


LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
