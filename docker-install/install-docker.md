https://docs.docker.com/engine/install/centos/
```
# remove the old if any 
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker 
sudo systemctl enable docker
sudo docker info
```
# Update the docker proxy 
ref : https://docs.docker.com/config/daemon/systemd/#httphttps-proxy
```
sudo mkdir -p /etc/systemd/system/docker.service.d
copy the following content to /etc/systemd/system/docker.service.d/http-proxy.conf
-------------------------
[Service]
Environment="HTTP_PROXY=http://<ip>:8080/"
Environment="HTTPS_PROXY=http://ip:8080/"
Environment="NO_PROXY=localhost,127.0.0.0/8,<pvt-registry>,127.0.0.1"
--------------------------------
```
for the docker cli settings:

ref: https://docs.docker.com/network/proxy/#configure-the-docker-client
```
sudo chmod 666 /etc/systemd/system/docker.service.d/http-proxy.conf
sudo systemctl daemon-reload
# Check the proxy setting done correctly
sudo systemctl show --property Environment docker
sudo chmod 666 /var/run/docker.sock
```
# Config docker proxy
copy the config.json file to user's .docker directory ```/home/<user>/.docker/config.json```
```
{
        "auths": {
                "<private-reg>": {
                        "auth": "<token>"
                }
        },
        "HttpHeaders": {
                "User-Agent": "Docker-Client/19.03.9 (linux)"
        },
        "proxies": {
                "default": {
                        "httpProxy": "http://<proxy>:8080",
                        "httpsProxy": "http://<proxy>:8080",
                        "noProxy": "localhost,127.0.0.0/8,<pvt-registry>,127.0.0.1"
                }
        }
}
```

# configure docker port 
replace the following attribute in the ```/usr/lib/systemd/system/docker.service```
```
ExecStart=/usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock -H tcp://localhost:2376
```
# Update the docker registry
```
sudo mkdir -p /etc/docker/certs.d/<pvt-registry>
touch ca.crt
```
Copy the registry certificate [<pvt-registry>/ca.crt](https://<store>.ca.crt) to ca.crt

# Check docker is working properly 
```
docker run hello-world
```
# install docker compose 
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
# change the docker-compose to executable
```
sudo chmod +x /usr/local/bin/docker-compose
```
# create the symlink
```
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
```
