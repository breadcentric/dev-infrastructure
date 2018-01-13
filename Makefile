reset: stop
	./scripts/gitlab/reset

before-start:
	./scripts/gitlab/before-start

after-start:
	./scripts/gitlab/after-start

start: before-start
	docker-compose up -d

stop:
	docker-compose down
