test:
	pytest

build:
	docker build -t ipapp .

push:
	docker tag ipapp dipakrasal2009/ipapp
	docker push dipakrasal2009/ipapp

all: test build push

