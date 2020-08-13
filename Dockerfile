#
# Jenkins for production operations.
#
# usage:
#   docker build -t darwin/jenkins-operation .
#   docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`/jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --name jenkins-operation darwin/jenkins-operation
#

FROM jenkins:2.60.3-alpine

# using root.
USER root

# install jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# setup local environment.
RUN apk upgrade --update && \
    apk add --no-cache --update docker curl
