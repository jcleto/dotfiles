# MySQL
# 

FROM ubuntu:precise
MAINTAINER Joao Cleto	"jcleto@irdeto.com"

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install mysql-server
RUN apt-get clean

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
ADD ./startup.sh /opt/startup.sh

EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
