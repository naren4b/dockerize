# dockerize
Runs allmost everything in docker 

-----------------------------------
Subject:  Harbor Exprter 
Link: https://github.com/c4po/harbor_exporter
Description: Harbor Registry Exporter
Command: 
```
docker run -d --restart unless-stopped -p 39107:9107 -e HARBOR_USERNAME=admin -e HARBOR_PASSWORD='Harbor12345' --name="myregistry" c4po/harbor-exporter --harbor.server=https://registry.naren4b.com  --harbor.insecure --harbor.timeout=1000ms
```
-----------------------------------

Subject: Jenkins 
Link: https://hub.docker.com/_/jenkins
Description: Running Jenkins Server 
Command: 
```
docker run --name myjenkins -p 8080:8080 -p 50000:50000 -v ${PWD}:/var/jenkins_home jenkins
```


