all: build-jenkins-master build-jenkins-slave build-private-registry

build-jenkins-master: 
	docker build -t jenkins-master .
	docker tag jenkins-master:latest localhost:5000/jenkins
	docker push localhost:5000/jenkins-master
	docker image remove jenkins-master

build-jenkins-slave:
	docker build -t jenkins-slave .
	docker tag jenkins-slave:latest localhost:5000/jenkins-slave
	docker push localhost:5000/jenkins-slave
	docker image remove jenkins-slave

build-private-registry:
	docker-compose -f docker-compose-registry.yml up -d

run:
	docker-compose -f docker-compose.ci.yml up -d

stop:
	docker-compose -f docker-compose.ci.yml down

clean:
	echo "Tear down docker-compose.yml services"
	docker-compose -f docker-compose.ci.yml down
	echo "Docker system info before clean"
	docker system df
	echo "Clean all about images, containers, volumes, networks"
	docker system prune -a -f
	docker system prune -f --volumes
	echo "Docker system info after clean"
	docker system df