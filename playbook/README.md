# Build the container 
```
docker build -t narenp/playbook:latest .
docker push  narenp/playbook:latest 
docker tag narenp/playbook:latest narenp/playbook:1.2
docker push narenp/playbook:1.2
```

# To use 
https://hub.docker.com/repository/docker/narenp/playbook/general
```
docker run -d narenp/playbook
```
# How to run 
```
docker stop playbook
docker rm playbook
docker run  -d -v ${pwd}:/work -w /work -p 5000:5000 --name=playbook narenp/playbook:latest # 3000 defaut waiting time 100secs
docker exec -it playbook sh
```
