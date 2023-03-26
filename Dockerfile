# docker image base on caddy image

FROM caddy:2.0.0-alpine

# Workdir
WORKDIR /usr/share/caddy

# copy all files

COPY . .

# expose port
EXPOSE 80

# run caddy
CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile"]


