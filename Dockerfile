FROM perl:latest AS mockserver

MAINTAINER Lev Zaplatin <ichi.su.mobile@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ADD test.pl /usr/local/mockserver/
WORKDIR /usr/local/mockserver/
VOLUME /root/.cpanm/

RUN apt-get update
RUN apt-get install -y build-essential curl cpanminus libperl-dev
RUN cpanm --verbose --sudo install Mojolicious
CMD ['morbo', './test.pl']

EXPOSE 80