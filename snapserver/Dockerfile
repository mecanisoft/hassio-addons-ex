ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk add --no-cache asio
RUN apk add --no-cache avahi-libs
RUN apk add --no-cache flac
RUN apk add --no-cache libvorbis
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache snapcast

RUN apk add --no-cache libasound2
RuN apk add --no-cache libvorbisfile3
RUN apk add --no-cache pulseaudio 
RUN apk add --no-cache pulseaudio-utils 
RUN apk add --no-cache gettext






# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
