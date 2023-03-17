FROM jenkins/jenkins:2.373
USER root
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/' /etc/apt/sources.list \
    && sed -i '/jenkins/d' /etc/passwd \
    && sed -i 's#/root#/var/jenkins_home#' /etc/passwd \
    && apt update \
    && apt install vim telnet wget zip unzip curl apt-utils openssl gcc automake autoconf libtool make zlib* -y \
    && apt-get clean

# ./configure --prefix=/var/jenkins_home/TOOLS/python3 --with-openssl=/var/jenkins_home/TOOLS/openssl
