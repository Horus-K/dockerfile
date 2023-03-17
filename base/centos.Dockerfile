FROM centos:7
RUN yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
    && yum install -y kde-l10n-Chinese vim iproute2 iotop net-tools lrzsz tree telnet lsof tcpdump wget traceroute telnet findutils zip unzip coreutils tzdata cronolog inetutils-ping language-pack-zh-hans curl apt-utils dialog locales transport-https build-essential bzip2 ca-certificates sudo jq gnupg2 software-properties-common dnsutils netcat-traditional dnsutils ttf-dejavu fontconfig kde-l10n-Chinese \
    && localedef -c -f UTF-8 -i zh_CN zh_CN.utf8



