# Fast deployment of Gotify Server with docker-compose 

I wanted to make a config for Nginx + gotify with three commands to deploy

## Installation

0. Ensure you have Docker Engine installed on your server

1. Clone this repo to your server
```
  git clone https://github.com/mrspartak/gotify-dc.git
```

2. Copy and edit .env file
```
  cd gotify-dc
  cp .env.example .env
  nano .env
```

```
//write your domain name here pointed via DNS to your server IP address. You can use Cloudflare to have SSL encrypted connection
//If you will use Cloudflare, ensure that you have Network>Websockets enabled
APP_DOMAIN=push.example.com

//Local ports that will be exposed by Gotify
APP_PORT=2080
APP_PORT_SSL=2083

#Folder to store sqlite DB of gotify
APP_DB_PATH=/home/sites/gotify-dc/data

#Your login and password
APP_USER_LOGIN=user
APP_USER_PASSWORD=password
```

3. Run docker :)
```
docker-compose up -d
```

That's it. If you need SSL encryption, you can use Cloudflare or change Nginx config to listen and redirect to 443 port and of course, make certificates. If you need MySQL/Postgres to work, you need to modify docker-compose.yaml
