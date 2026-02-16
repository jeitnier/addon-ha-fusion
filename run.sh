#!/usr/bin/with-contenv bashio

export HASS_PORT=$(bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

# Source custom env overrides from persistent data directory
if [ -f /data/.env ]; then
    set -a; . /data/.env; set +a
fi

echo "Starting Fusion..."

node server.js
