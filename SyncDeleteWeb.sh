#!/bin/bash

cd ~

echo "Remove Old IBIZA"
IBIZA_DIR="IBIZA"
if [ -d "$IBIZA_DIR" ]; then rm -Rf $IBIZA_DIR; fi

echo "Get IBIZA Latest"
git clone https://github.com/chris-romanov/IBIZA.git

cd IBIZA

echo "Sync IBIZA"
rsync -av web /usr/bin/v2ray-docker-compose/v2ray-caddy-cdn/caddy/