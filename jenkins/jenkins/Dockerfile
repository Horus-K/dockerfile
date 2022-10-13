FROM jenkins/jenkins:2.373
USER root
RUN sed -i '/jenkins/d' /etc/passwd && sed -i 's#/root#/var/jenkins_home#' /etc/passwd