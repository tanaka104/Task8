FROM jenkins/jenkins:latest
# install via apt
USER root

# install jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
RUN chown -R 1000:1000 /var/jenkins_home
RUN chmod -R 777 /var/jenkins_home

USER jenkins
