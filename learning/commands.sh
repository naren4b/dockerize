# Userful docker commands 
docker version 
docker ps 
docker run hello-world
docker run docker/whalesay cowsay boo
# runs the docker container with cpu restricted to 50% of total host cpu
docker run --cpus=.5 ubuntu

#110m of memory of total memory of the system
docker run --memory=100m ubuntu

#Show all the running docker instances 
docker ps 
# Shows the stopped containers too 
docker ps -a

#remove the container (has to be stopped)
docker rm <name-of-the-container/id>

# removes all the stoped ,exited containers 
docker container prune 

#shows the downloaded images
docker images 
#deletes all unused images
docker image prune 

#remove a docker image (note if there is no runing container using this)
docker rmi <image-name>
#keeps the image downloaded
docker pull <image-name>

# Give the container both ENTRYPOINT and CMD, below is an example which shows entry point is sleep and command is 5 secs  
docker run ubuntu sleep 5 

#interactive mode 
docker run -i <image-name> 
#attach the current terminal to container 
docker run -t <image-name>
#execute command inside the container 
docker exec -it <container-name> <command>
docker exec -it mybox sh 

#background mode running
docker -d <image-name>
docker attach <container-id>

# Running a container 
docker run image:<version> // default is latest

#Choose the port to expose the server outside the contianer 
docker run -p <docker-host-port>:<container-port> <image-name>

#Attach a volume 
docker run -v <docker-host-dir>:<container-dir>  <image-name> 

# To get more information about the container 
docker inspect <container-name/id>

#logs of the conatiner 
docker logs <container-name/id>

#Sets Environment variable
docker -e <NAME-ENV>=<ENV-VALUE> <image-name>

# TO LINK two container , so that they can communicate in this frontend is able to reach to redis server 
docker run -d --name=myredis redis
docker run -d --name=mynodejs --link=myredis:myredis

