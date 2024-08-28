#!/bin/bash
# Init

#....
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...

git clone https://gitea.home.pfeiffer-privat.de/ppfeiffer/trackdirect.git
cd trackdirect/
docker compose up -d
cat files/caddy_trackdirect >> /etc/caddy/Caddyfile
systemctl restart caddy
