FROM zipcodeman/linode

MAINTAINER Zachary Bush <zabu.other@gmail.com>

# I need ruby for jekyll
RUN apt-get install -y ruby

RUN sudo -u user mkdir -p ~user/zmbush.com
RUN sudo -u user git clone https://github.com/zipcodeman/zmbush.com ~user/zmbush.com/www
