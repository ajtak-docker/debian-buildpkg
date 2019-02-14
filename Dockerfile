FROM debian:latest

RUN apt update

RUN apt install -y gcc make dpkg-dev g++ wget

RUN wget -O cmake.sh https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.sh

RUN mkdir -p /cmake

RUN /bin/sh ./cmake.sh --prefix=/cmake --exclude-subdir --skip-license

RUN ln -sf /cmake/bin/cmake /usr/bin/cmake

RUN cmake --version









