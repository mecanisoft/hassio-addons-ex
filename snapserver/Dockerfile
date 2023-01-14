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

RUN apk add --no-cache libdaemon
RUN apk add --no-cache libconfig
RUN apk add --no-cache pulseaudio
RUN apk add --no-cache pulseaudio-utils
RUN apk add --no-cache alsa-plugins-pulse
RUN apk add --no-cache pulseaudio-dev
RUN apk add --no-cache pulseaudio-alsa
# RUN apk add --no-cache pulseaudio-zerocon



# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
