NAME="polltest"
DIR=$(shell pwd)
DOCKER_MACHINE_IP=$(docker-machine ip)

build:
	docker build -t $(NAME) .

clean:
	-docker rm -f $(NAME)
	-docker rm -f wernight/phantomjs

bash:
	docker exec -it $(NAME) bash

start:
	make clean
	docker run -d -p 8910:8910 wernight/phantomjs phantomjs --webdriver=8910
	docker run -itd --name=$(NAME) -e "DOCKER_MACHINE_IP=$(DOCKER_MACHINE_IP)" -p 4200:4200 -p 9877:9877 -p 6500:6500 -v "/$(DIR)"://development $(NAME)
	make bash

shutdown:
	docker stop $(NAME)
