git clone https://gitea.home.pfeiffer-privat.de/ppfeiffer/trackdirect.git
cd trackdirect/
docker compose up -d
cat files/caddy_trackdirect >> /etc/caddy/Caddyfile