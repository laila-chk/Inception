build:
	docker compose -f srcs/docker-compose.yml up --build

up:
	docker compose -f srcs/docker-compose.yml up
	
down:
	docker compose -f srcs/docker-compose.yml down 

clean:
	docker rmi $$(docker images -aq)	

fclean:
	docker rm $$(docker ps -aq)	
	
rm_vols:
	docker volume prune 

cclean:
	docker system prune -a
