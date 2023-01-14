ARG BUILD_FROM
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

RUN apk update
RUN apk upgrade
RUN apk add --no-cache protobuf-dev
# RUN apk add --no-cache libasound2-dev 
# RUN apk add --no-cache libvorbisidec-dev 
# RUN apk add --no-cache libvorbis-dev 
# RUN apk add --no-cache libflac-dev 
RUN apk add --no-cache alsa-utils 
# RUN apk add --no-cache libavahi-client-dev 
# RUN apk add --no-cache avahi-daemon
RUN apk add --no-cache alsa-lib
RUN apk add --no-cache snapcast 
RUN apk add ssl-cert
RUN apk add ca-certificates
RUN apk add --no-cache gcc
RUN apk add --no-cache python3-dev
RUN apk add --no-cache linux-kernel-headers
RUN apk add --no-cache python3-pip
RUN pip3 install poetry
RUN apk add --no-cache python3-venv
RUN pip install snapcastr

# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
