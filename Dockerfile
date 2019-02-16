FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y gcc make dpkg-dev g++ wget build-essential libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev zlib1g python3

RUN python3 --version

RUN pip install mkdocs

RUN wget -q -O cmake.sh https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.sh

RUN mkdir -p /cmake

RUN /bin/sh ./cmake.sh --prefix=/cmake --exclude-subdir --skip-license

RUN ln -sf /cmake/bin/cmake /usr/bin/cmake

RUN mkdir -p /opt/src-fisloader

WORKDIR   /opt/src-fisloader




