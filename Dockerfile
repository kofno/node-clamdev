FROM ubuntu:14.04

RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get install -y build-essential
RUN apt-get install -y libclamav-dev
RUN apt-get install -y clamav-freshclam
RUN freshclam

RUN apt-get install -y python2.7
RUN ln -s /usr/bin/python2.7 /usr/bin/python

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install -y nodejs
