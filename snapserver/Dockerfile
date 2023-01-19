ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk add --no-cache augeas
RUN apk add --no-cache asio
RUN apk add --update dbus
RUN apk add --update avahi
RUN apk add --no-cache avahi-tools
RUN apk add --no-cache flac
RUN apk add --no-cache libvorbis
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache snapcast

RUN apk add --no-cache libvorbis

RUN rm /etc/avahi/services/*

# Copy root filesystem
COPY rootfs /

# RUN dbus-uuidgen > /var/lib/dbus/machine-id
RUN mkdir -p /var/run/dbus
RUN mkdir -p /tmp/snapcast/


LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
