DOCKER=docker
DPATH=${CURDIR}

IMAGE_NAME=pygeoapi
VERSION=0.0.2


export DPATH
.PHONY:	build-docker push-docker

build-docker:
	$(DOCKER) build . --network host -f ./Dockerfile -t algebrasrl/${IMAGE_NAME}:${VERSION}

push-docker:
	$(DOCKER) push algebrasrl/${IMAGE_NAME}:${VERSION}
	$(DOCKER) push algebrasrl/${IMAGE_NAME}:latest
