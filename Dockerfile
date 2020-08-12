FROM jenkins/jenkins:latest
# install via apt
USER root

# install jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
RUN touch test.txt

USER jenkins
