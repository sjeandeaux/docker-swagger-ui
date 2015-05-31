# docker-swagger-ui

## Start

```sh
docker run -d --name swagguer-ui -p 8888:8888 sjeandeaux/docker-swagger-ui

#override API URL
docker run -d --name swagger-ui -p 8888:8888 -e "API_URL=YOUR_URL" sjeandeaux/docker-swagger-ui
```

## Build

```sh
make build
```

This command builds `Dockerfile`. The `FROM` is [official node](https://registry.hub.docker.com/_/node/).

## Run

```sh
make run
make open
```

These commands run swagger-ui container and open your web browser.

