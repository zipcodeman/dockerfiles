FROM zipcodeman/linode

MAINTAINER Zachary Bush <zabu.other@gmail.com>

# I need ruby for jekyll
RUN apt-get install -y ruby1.9.1
RUN apt-get install -y ruby1.9.1-dev
RUN gem install jekyll

RUN sudo -u user mkdir -p ~user/zmbush.com
RUN sudo -u user git clone https://github.com/zipcodeman/zmbush.com ~user/zmbush.com/www
