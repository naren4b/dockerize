FROM alpine:latest
RUN apk update

RUN apk add curl jq  tree --no-cache git
# Kubectl 
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

# minIo Client 
RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && chmod +x mc && mv ./mc /usr/local/bin/mc

RUN mkdir /work/
WORKDIR /work/
COPY ./src/* /work/
USER root:root
EXPOSE 80
ENTRYPOINT [ "sleep" ]
CMD [ "25" ]

