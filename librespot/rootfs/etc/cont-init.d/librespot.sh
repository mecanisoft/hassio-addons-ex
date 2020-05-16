#!/usr/bin/with-contenv bashio
# ==============================================================================
# Sets up the configuration file for librespot
# ==============================================================================

# Create snapfifo dir
bashio::log.info 'Create snapfifo dir...'

mkdir -p /share/snapfifo

# Create librespot fifo
bashio::log.info 'Create fifo file...'

if ! bashio::fs.file_exists '/share/snapfifo/librespot'; then
    mkfifo /share/snapfifo/librespot ||
        bashio::exit.nok "Could not create fifo file file on filesystem"
fi
