FROM ubuntu:20.04
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
&& sed -i 's/restricted/restricted universe multiverse/g' /etc/apt/sources.list \
&& ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo Asia/Shanghai > /etc/timezone && apt update \
&& apt -yq install vim iproute2 iotop net-tools lrzsz tree telnet lsof tcpdump wget traceroute telnet findutils zip unzip coreutils tzdata cronolog inetutils-ping language-pack-zh-hans curl apt-utils dialog locales apt-transport-https build-essential bzip2 ca-certificates sudo jq gnupg2 software-properties-common dnsutils netcat-traditional dnsutils ttf-dejavu fontconfig \
&& add-apt-repository -y ppa:ondrej/php \
&& apt install php7.4 php7.4-fpm php7.4-common php7.4-mysql php7.4-mbstring php7.4-gd php7.4-xml php7.4-mcrypt \
&& apt-get clean \
&& locale-gen zh_CN.UTF-8