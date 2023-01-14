ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk update
RUN apk upgrade
RUN apk add --no-cache protobuf-dev curl jq git build-essential libasound2-dev libvorbisidec-dev 
RUN apk add --no-cache libvorbis-dev libflac-dev alsa-utils libavahi-client-dev avahi-daemon
RUN apk add --no-cache build-essential debhelper dh-make dh-systemd quilt fakeroot lintian
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache snapcast 

# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
