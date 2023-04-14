build:
	@docker-compose -f srcs/docker-compose.yml up --build

up:
	@docker-compose -f srcs/docker-compose.yml up
	
down:
	@docker-compose -f srcs/docker-compose.yml down 

rmi:
	ifneq ($(imgs),)
	@docker rmi -f $$(docker images -aq)	

rm:
	@docker rm -f $$(docker ps -aq)	
	
rm_vols:
	@docker volume rm -f $$(docker volume ls -q)

cclean:
	@docker system prune -af

rm_net:
	@docker network rm $$(docker network ls -q) 2>/dev/null