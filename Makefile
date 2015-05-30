current_dir = $(shell pwd)
host = $(shell if [ -n "$(shell which boot2docker)" ]; then boot2docker ip; else echo 127.0.0.1; fi)
tag = sjeandeaux/docker-swagger-ui
littleName = swagguer-ui
publish = -p 8888:8888
 
build:
	docker build -t $(tag) .

proxy-build:
	docker build -t $(tag) -f $(shell docker-proxy-file) .

rm:
	docker rm -f $(littleName)

rmi:
	docker rmi -f $(tag)

logs:
	docker logs $(littleName)

exec:
	docker exec -ti $(littleName) /bin/bash

run:
	docker run -d --name $(littleName) $(publish) $(tag)
run-ti:
	docker run -ti --name $(littleName) $(publish) $(tag)
