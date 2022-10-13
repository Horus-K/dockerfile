FROM ubuntu:20.04
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/restricted/restricted universe multiverse/g' /etc/apt/sources.list \
&& ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo Asia/Shanghai > /etc/timezone && apt update \
&& apt -yq install vim iproute2 iotop net-tools lrzsz tree telnet lsof tcpdump wget traceroute telnet findutils zip unzip coreutils tzdata cronolog inetutils-ping language-pack-zh-hans curl apt-utils dialog locales apt-transport-https build-essential bzip2 ca-certificates sudo jq gnupg2 software-properties-common dnsutils netcat-traditional dnsutils ttf-dejavu fontconfig \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& apt-get clean \
&& locale-gen zh_CN.UTF-8 \
&& groupadd -r docker -g 888 \
&& useradd -r -d /home/docker -s /bin/bash -g docker -G docker -u 888 docker -c "docker user" \
&& mkdir /home/docker && cp /root/.bashrc /home/docker \
&& cp /root/.profile /home/docker && chown 888:888 /home/docker -R
USER docker
WORKDIR /home/docker
RUN mkdir -pv /home/docker/java && mkdir -pv /home/docker/tools && mkdir -pv /home/docker/sh && mkdir -pv /home/docker/agent && mkdir -pv /home/docker/backup
ENV TIMEZONE=Asia/Shanghai
ENV LANG=zh_CN.UTF-8