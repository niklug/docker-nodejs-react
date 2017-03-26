# docker-nodejs-react

## docker help commands

- docker build -t docker-nodejs-react:0.1 .  - create a container from the image
- docker run -p 49160:8080 -d  docker-nodejs-react:0.1 - run a container accesable at 'http://0.0.0.0:49160/'
- docker run -v /usr/src/app  -it mern-starter:0.1 - another example
- docker ps -a - view all containers
- docker stop $(docker ps -a -q)  - stop all containers
- docker rm $(docker ps -a -q) - remove all containers
- docker run -v $(pwd)/:/www/ -it ubuntu - example entering into container
- docker run --name app-db -d mongo - create mongodb container
- docker run -v "$(pwd)":/data --name mongo -d mongo mongod --smallfiles   - create mongodb container 2 example
- docker exec -it mongo bash - entering into mongo container terminal