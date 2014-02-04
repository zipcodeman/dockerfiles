# VERSION 1.0

FROM debian

MAINTAINER Zachary Bush <zabu.other@gmail.com>

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y build-essential
RUN apt-get install -y cron
RUN apt-get install -y finger
RUN apt-get install -y git
RUN apt-get install -y mlocate
RUN apt-get install -y nginx
RUN apt-get install -y ntp
RUN apt-get install -y ssh
RUN apt-get install -y sudo
RUN apt-get install -y tmux
RUN apt-get install -y vim

RUN adduser user --gecos "M.T. Seat,42,," --disabled-login
