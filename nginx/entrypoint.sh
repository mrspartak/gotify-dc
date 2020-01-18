#!/bin/sh

export APP_DOMAIN
export APP_PORT

echo "!!! Server listen to ${APP_DOMAIN} !!!"

envsubst '${APP_DOMAIN} ${APP_PORT}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

exec "$@"