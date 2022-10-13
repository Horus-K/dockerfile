FROM jenkins/jenkins:2.373
USER root
RUN sed -i '/jenkins/d' /etc/passwd \
    && sed -i 's#/root#/var/jenkins_home#' /etc/passwd \
    && cp -a /root/.bash_profile /var/jenkins_home/ \
    && cp -a /root/.bashrc /var/jenkins_home/ \
    && cp -a /root/.cshrc /var/jenkins_home/
