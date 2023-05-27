
.DEFAULT_GOAL := build

build:
	docker build . -t agendav:dev

serve: build
	docker-compose up
