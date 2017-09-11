FROM ubuntu:16.04
MAINTAINER Ddnirvana "ddnirvana1@gmail.com"

RUN apt-get -qq update && apt-get install -y curl vim git build-essential net-tools iputils-ping pciutils iperf iperf3 openssh-server wget module-init-tools ethtool ; 

COPY README.md /home/

#$VOLUME ["/root"]
WORKDIR /home
