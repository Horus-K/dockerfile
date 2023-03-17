FROM ubuntu:20.04
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/restricted/restricted universe multiverse/g' /etc/apt/sources.list \
&& ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo Asia/Shanghai > /etc/timezone && apt update \
&& apt -yq install vim iproute2 iotop net-tools lrzsz tree telnet lsof tcpdump wget traceroute telnet findutils zip unzip coreutils tzdata cronolog inetutils-ping language-pack-zh-hans curl apt-utils dialog locales apt-transport-https build-essential bzip2 ca-certificates jq gnupg2 software-properties-common dnsutils netcat-traditional dnsutils ttf-dejavu fontconfig \
&& apt-get clean \
&& locale-gen zh_CN.UTF-8
WORKDIR /root
RUN mkdir -pv java && mkdir -pv tools && mkdir -pv sh && mkdir -pv agent && mkdir -pv backup
ENV TIMEZONE=Asia/Shanghai
ENV LANG=zh_CN.UTF-8
