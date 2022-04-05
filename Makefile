DOCKER=docker
DPATH=${CURDIR}

IMAGE_NAME=pygeoapi


export DPATH
.PHONY:	build-docker push-docker

build-docker:
	$(DOCKER) build . --network host -f ./Dockerfile -t algebrasrl/${IMAGE_NAME}

push-docker:
	$(DOCKER) push algebrasrl/${IMAGE_NAME}:${VERSION}
