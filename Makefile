DOCKER_NAME := ldenefle/qmk_env:latest
PWD := $(shell pwd)
docker:
	@docker build -t ${DOCKER_NAME} .

build:
	docker run -v ${PWD}:/qmk-keymap ${DOCKER_NAME}
