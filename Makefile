build:
	docker-compose -f srcs/docker-compose.yml up --build

up:
	docker-compose -f srcs/docker-compose.yml up
	
down:
	docker-compose -f srcs/docker-compose.yml down 

clean:
	docker rmi -f $$(docker images -aq)	

fclean:
	docker rm -f $$(docker ps -aq)	
	
rm_vols:
	 docker volume rm $$(docker volume ls -q)

cclean:
	docker system prune -af

super_clean:
	docker rm -f $(docker ps -qa);
	docker rmi -f $(docker images -qa);
	docker volume rm $(docker volume ls -q);
	docker network rm $(docker network ls -q) 2>/dev/null