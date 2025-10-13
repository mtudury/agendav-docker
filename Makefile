version=2.6.0-11

.DEFAULT_GOAL := build

build:
	docker build . -t agendav:dev

tag:
	docker tag agendav:dev registry.dev.codingf.net/agendav:${version}

push:
	docker push registry.dev.codingf.net/agendav:${version}

serve: build
	docker-compose up
