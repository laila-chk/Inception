build:
	docker compose -f srcs/docker-compose.yml up --build

up:
	docker compose -f srcs/docker-compose.yml up
	
down:
	docker compose -f srcs/docker-compose.yml down 

clean:
	docker rmi -f $$(docker images -aq)	

fclean:
	docker rm -f $$(docker ps -aq)	
	
rm_vols:
	 docker volume rm $$(docker volume ls -q)

cclean:
	docker system prune -af

super_clean: down cclean  clean fclean rm_vols 
