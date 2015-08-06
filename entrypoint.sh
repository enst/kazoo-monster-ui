#!/bin/bash

MY_IP=$(ip route get 8.8.8.8 | awk '/8.8.8.8/ {print $NF}')
sed -i "/api.zswitch.net/s/api.zswitch.net/$MY_IP/" /var/www/html/monster-ui/js/config.js
sed -i "/api.zswitch.net/s/https:\/\/api.zswitch.net:8443/http:\/\/$MY_IP:8000/" /var/www/html/kazoo-ui/config/config.js

service httpd restart

exec /bin/bash "$@"

