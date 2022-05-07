FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && apt install -y python3 python3-pip
RUN curl -fsSL get.docker.com | bash