FROM ubuntu:latest
LABEL "Author"="Danish"
LABEL "projejct"="web app"
RUN apt-get update -y
RUN apt-get install apache2 git -y 
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2 
ADD nano.tar.gz /var/www/html
