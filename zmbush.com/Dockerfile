FROM zipcodeman/base

MAINTAINER Zachary Bush <zabu.other@gmail.com>

RUN apt-get update -y
RUN apt-get upgrade -y

# I need ruby for jekyll
RUN apt-get install -y ruby1.9.1
RUN apt-get install -y ruby1.9.1-dev
RUN apt-get install -y graphviz
RUN gem install jekyll
RUN gem install kramdown

RUN sudo -u user mkdir -p ~user/zmbush.com
RUN sudo -u user git clone https://github.com/zipcodeman/zmbush.com ~user/zmbush.com/www
RUN sudo -u user jekyll build --source ~user/zmbush.com/www --destination ~user/zmbush.com/www/_site

ADD zmbush.com.nginx /etc/nginx/sites-available/zmbush.com
RUN ln -s /etc/nginx/sites-available/zmbush.com /etc/nginx/sites-enabled/zmbush.com

# tell Nginx to stay foregrounded
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# run
ENTRYPOINT /usr/sbin/nginx -c /etc/nginx/nginx.conf

# expose HTTP
EXPOSE 80
