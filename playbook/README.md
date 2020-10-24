# Build the container 
docker build -t narenp/playbook:latest .
docker push narenp/playbook:latest
docker run  -d -v ${pwd}:/work -w /work -p 5000:5000 narenp/playbook:latest  1000