main:
	cp -f env .env
	docker-compose up --build -d

config:
	cp -f gameserver/config/ServerInfo.ini workspace/server/Server/Config/

e.sv:
	docker-compose exec gs bash

restart: gs.script.chmod
	cd gameserver/scripts && \
		./restart

stop: gs.script.chmod
	cd gameserver/scripts && \
		./stop

run: gs.script.chmod
	cd gameserver/scripts && \
		./run

gs.script.chmod:
	chmod -R +x gameserver/scripts

