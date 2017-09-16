FROM ubuntu:16.04
MAINTAINER Ddnirvana "ddnirvana1@gmail.com"

RUN apt-get -qq update && apt-get install -y curl vim git build-essential net-tools iputils-ping pciutils iperf iperf3 openssh-server wget module-init-tools ethtool fuse libfuse-dev psmisc; 

RUN cp /usr/include/fuse /usr/local/include/ -r

RUN apt-get -qq update && apt-get install -y sudo;

RUN ls ;echo -e "000\n000"| passwd root && useradd --no-log-init -r -m -g root stu && echo -e "000\n000" | passwd stu

COPY README.md /home/stu/

USER stu

#$VOLUME ["/root"]
WORKDIR /home/stu/
