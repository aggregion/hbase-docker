build:
	docker build -t aggregion/hbase .

push:
	docker push aggregion/hbase

all:
	make build
	make push
