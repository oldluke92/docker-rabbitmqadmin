# Makefile for rabbitmqadmin Docker image

TAG=nasqueron/rabbitmqadmin
VERSION=3_6_0

all: build

rabbitmqadmin:
	wget https://raw.githubusercontent.com/rabbitmq/rabbitmq-management/rabbitmq_v${VERSION}/bin/rabbitmqadmin
	chmod +x rabbitmqadmin

build: rabbitmqadmin
	docker build -t ${TAG} .

test:
	docker run -it --rm nasqueron/rabbitmqadmin help

clean:
	rm -f rabbitmqadmin
