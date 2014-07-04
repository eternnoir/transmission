#!/bin/bash

set -e

CONFIG_DIR=/etc/transmission-daemon
SETTINGS=$CONFIG_DIR/settings.json
TRANSMISSION=/usr/bin/transmission-daemon

exec $TRANSMISSION -f --no-portmap --config-dir $CONFIG_DIR --log-info 


