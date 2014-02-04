FROM zipcodeman/linode

MAINTAINER Zachary Bush <zabu.other@gmail.com>

# I need ruby for jekyll
RUN apt-get install -y ruby

USER user
RUN mkdir -p ~/zmbush.com
RUN git clone https://github.com/zipcodeman/zmbush.com ~/zmbush.com/www
