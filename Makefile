main:
	cp -f env .env
	docker-compose up --build -d

e.sv:
	docker-compose exec gs bash

restart:
	docker-compose restart

