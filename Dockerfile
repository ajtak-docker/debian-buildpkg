FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y gcc make dpkg-dev g++ wget build-essential libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev zlib1g

RUN wget -O Python.tgz https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz

RUN tar -xzvf Python.tgz

RUN wget -O cmake.sh https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.sh

RUN cd Python-3.7.2

RUN ./configure --enable-optimizations

RUN make && make install

RUN python3 --version

RUN pip install mkdocs

RUN mkdir -p /cmake

RUN /bin/sh ./cmake.sh --prefix=/cmake --exclude-subdir --skip-license

RUN ln -sf /cmake/bin/cmake /usr/bin/cmake

RUN mkdir -p /opt/src-fisloader

WORKDIR   /opt/src-fisloader






