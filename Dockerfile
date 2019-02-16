FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y gcc make dpkg-dev g++ wget build-essential libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev zlib1g

RUN wget -q -O Python.tgz https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz

RUN tar -xzvf Python.tgz

RUN cd Python-3.7.2 && ./configure --enable-optimizations && make && make install

RUN python3 --version

RUN pip install mkdocs

RUN wget -q -O cmake.sh https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.sh

RUN mkdir -p /cmake

RUN /bin/sh ./cmake.sh --prefix=/cmake --exclude-subdir --skip-license

RUN ln -sf /cmake/bin/cmake /usr/bin/cmake

RUN mkdir -p /opt/src-fisloader

WORKDIR   /opt/src-fisloader




