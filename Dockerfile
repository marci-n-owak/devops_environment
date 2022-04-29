FROM jenkins/jenkins:lts-jdk11
USER root
RUN curl -fsSL get.docker.com | bash