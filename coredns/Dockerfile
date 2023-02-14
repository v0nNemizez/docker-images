FROM ubuntu:latest

USER root


WORKDIR /app
RUN useradd coredns
RUN apt update && apt install -y wget tar
RUN wget https://github.com/coredns/coredns/releases/download/v1.10.0/coredns_1.10.0_linux_amd64.tgz
RUN tar zxvf coredns_1.10.0_linux_amd64.tgz
RUN rm coredns_1.10.0_linux_amd64.tgz


USER coredns

cmd sh ./coredns -dns.port=1053

