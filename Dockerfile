FROM ubuntu:xenial

MAINTAINER krlsdu <krlsdu@gmail.com>

RUN apt-get update -qq -y && apt-get install -qq -y software-properties-common && rm -rf /var/lib/apt/lists/*

RUN apt-add-repository -y ppa:ansible/ansible && apt-get update -qq -y && apt-get install -qq -y \
    ansible \
 && rm -rf /var/lib/apt/lists/*

RUN echo -e "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts