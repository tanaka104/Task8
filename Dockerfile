
FROM jenkins/jenkins:latest
USER root

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
WORKDIR /var/jenkins_home/Exportfile

