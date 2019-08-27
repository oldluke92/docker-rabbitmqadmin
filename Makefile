# Makefile for rabbitmqadmin Docker image

IMAGE=nasqueron/rabbitmqadmin
TAG=v3.7.17

all: build

rabbitmqadmin:
	wget https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/${TAG}/bin/rabbitmqadmin
	chmod +x rabbitmqadmin

build: rabbitmqadmin
	docker build -t ${IMAGE}:${TAG} .

test:
	docker run -it --rm ${IMAGE}:${TAG} help

clean:
	rm -f rabbitmqadmin
