clean: stop
	./scripts/gitlab/reset

prepare:
	./scripts/gitlab/before-start

init:
	./scripts/gitlab/after-start

start: prepare
	docker.compose up -d

stop:
	docker.compose down
