FROM ubuntu:latest

USER root

WORKDIR /vault
RUN apt update && apt install -y wget gpg lsb-core
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

RUN apt update && apt install -y vault

RUN chmod 777 /opt/vault/data 
COPY ./config.hcl ./config.hcl
COPY ./start.sh ./start.sh
RUN chmod +x /vault/start.sh

USER vault

EXPOSE 8200
EXPOSE 8201


cmd sh /vault/start.sh

