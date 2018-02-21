FROM ubuntu:xenial

MAINTAINER krlsdu <krlsdu@gmail.com>

RUN apt-get update && apt-get install -y software-properties-common && rm -rf /var/lib/apt/lists/*

RUN apt-add-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y \
    ansible \
 && rm -rf /var/lib/apt/lists/*

RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts