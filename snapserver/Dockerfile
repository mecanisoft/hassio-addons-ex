ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8



RUN apk add --no-cache dbus
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache libdaemon
RUN apk add --no-cache popt
RUN apk add --no-cache soxr
RUN apk add --no-cache avahi
RUN apk add --no-cache libconfig

RUN apk add --no-cache libstdc++
RUN apk add --no-cache snapcast
RUN apk add --no-cache libtool
# RUN apk add --no-cache pulseaudio 
# RUN apk add --no-cache pulseaudio-utils


# Copy root filesystem
COPY rootfs /


LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
