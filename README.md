# dockerize
Runs allmost everything in docker 

######################################################################
### Description: 
Harbor Registry Exporter

### Command: 
```
docker run -d --restart unless-stopped -p 39107:9107 -e http_proxy=http://10.220.428.224:8080 -e https_proxy=http://10.220.428.224:8080 -e HARBOR_USERNAME=admin -e HARBOR_PASSWORD='Harbor12345' --name="myregistry" c4po/harbor-exporter --harbor.server=https://registry.naren4b.com  --harbor.insecure --harbor.timeout=1000ms

```


