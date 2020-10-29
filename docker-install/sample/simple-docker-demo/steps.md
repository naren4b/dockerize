# Easy Steps to build , push and use your own docker image 
  1. Resgister at https://hub.docker.com/
  2. Write a simple docker file 
  3. Install docker cli
  4. Foll
# 
```
docker build <DockerFile name> -t <reg-id>/<App-Name>:<version>
docker login docker.io
docker push username/reponame
docker push narenp/hello-app
docker history <image-name>
docker build <DockerFile name> -t <reg-id>/<App-Name>:<version>
docker login registry-1.docker.io -u narenp -p <password>
docker push narenp/hello-app
```

# Writing the docker file 

```
docker run -it -v ${PWD}:/work -w /work nginx /bin/sh
```
