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
RUN apk add --no-cache libressl
RUN apk add --no-cache soxr
RUN apk add --no-cache avahi
RUN apk add --no-cache libconfig

RUN apk add --no-cache libstdc++@edge
RUN apk add --no-cache snapcast@edgecommunity
RUN apk add --no-cache git
RUN apk add --no-cache build-base
RUN apk add --no-cache autoconf
RUN apk add --no-cache automake
RUN apk add --no-cache libtool
RUN apk add --no-cache alsa-lib-dev
RUN apk add --no-cache libdaemon-dev
RUN apk add --no-cache popt-dev
RUN apk add --no-cache libressl-dev
RUN apk add --no-cache soxr-dev
RUN apk add --no-cache avahi-dev
RUN apk add --no-cache libconfig-dev
RUN apk add --no-cache cargo
# RUN apk add --no-cache nginx
RUN apk add --no-cache openssl

RUN mkdir -p /srv/build
RUN cd /srv/build
RUN git clone https://github.com/mikebrady/shairport-sync.git shairport-sync
RUN cd shairport-sync
RUN autoreconf -i -f
RUN ./configure --with-alsa --with-pipe --with-stdout --with-avahi  --with-soxr --with-metadata 
# --with-ssl=openssl
RUN make
RUN make install
RUN cd /

RUN cargo install librespot

# RUN mkdir -p /run/nginx/ /srv/certs/

# Copy root filesystem
COPY rootfs /

LABEL \
    io.hass.version="VERSION" \
    io.hass.type="addon" \
    io.hass.arch="armhf|aarch64|i386|amd64"
