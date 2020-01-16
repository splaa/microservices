build-network:
	docker network create reddit
build-post:
	docker build -t splaa/post:1.0 ./post-py
build-comment:
	docker build -t splaa/comment:1.0 ./comment
build-ui:
	docker build -t splaa/ui:1.0 ./ui

create-network:
	docker network create reddit

run-network:
	docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db mongo:latest
	docker run -d --network=reddit --network-alias=post <your-login>/post:1.0
	docker run -d --network=reddit --network-alias=comment <your-login>/comment:1.0
	docker run -d --network=reddit -p 9292:9292 <your-login>/ui:1.0

#	Удаляем старые копии
#	docker kill $(docker ps -q)

#	Создаём docker volume
create-velume:
	docker volume create service_db