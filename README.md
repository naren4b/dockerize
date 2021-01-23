# dockerize
Runs all most everything in docker 

```
bash-shell $pwd 
power-shell ${PWD}
```
 
-----------------------------------
# Regular working Environment

docker run -it --rm -v ${HOME}:/root/ -v ${PWD}:/work -w /work --net host alpine sh

-----------------------------------
# Harbor Exprter 
- Link: https://github.com/c4po/harbor_exporter
- Description: Harbor Registry Exporter
- Command: 
```
docker run -d --restart unless-stopped -p 39107:9107 -e HARBOR_USERNAME=admin -e HARBOR_PASSWORD='Harbor12345' --name="myregistry" c4po/harbor-exporter --harbor.server=https://registry.naren4b.com  --harbor.insecure --harbor.timeout=1000ms
```
-----------------------------------
# Jenkins 
- Link: https://hub.docker.com/_/jenkins
- Description: Running Jenkins Server 
- Command: 
```
docker run --name myjenkins -p 8080:8080 -p 50000:50000 -v ${PWD}:/var/jenkins_home jenkins
```
-----------------------------------
# prometheus 
- Link: https://prometheus.io/docs/prometheus/latest/installation/
- Description: Running prometheus Server 
- Command: 
```
docker run -p 9090:9090 -v ${PWD}/prometheus:/etc/prometheus -v ${pwd}/prometheus/data:/prometheus --name=prometheus prom/prometheus

```



