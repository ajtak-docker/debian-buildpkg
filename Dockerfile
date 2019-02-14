FROM debian:stable-backports

RUN apt update

RUN apt install -y gcc cmake make dpkg-dev



