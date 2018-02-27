FROM ubuntu:xenial

MAINTAINER krlsdu <krlsdu@gmail.com>

RUN apt-get update -qq -y && apt-get install -qq -y software-properties-common && rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq -y && apt-get install -qq -y python3-venv python3-pip vim && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN apt-add-repository -y ppa:ansible/ansible && apt-get update -qq -y && apt-get install -qq -y \
    ansible tar unzip \
 && rm -rf /var/lib/apt/lists/*

RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

ENTRYPOINT ["/sbin/init"]
