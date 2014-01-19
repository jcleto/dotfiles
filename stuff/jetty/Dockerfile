# Java, Jetty
# 

FROM ubuntu:precise
MAINTAINER Joao Cleto	"jcleto@irdeto.com"

# Install Java
# enable universe
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y openjdk-7-jre-headless
RUN apt-get clean

# Install Jetty
ADD jetty8.tar.gz /opt/jetty.tar.gz
RUN tar -xvf /opt/jetty.tar.gz -C /opt/
RUN mv /opt/jetty-distribution-8.1.14.v20131031 /opt/jetty
RUN useradd jetty -U -s /bin/false
RUN chown -R jetty:jetty /opt/jetty

# Run Jetty
EXPOSE 8080
CMD ["java", "-Djetty.home=/opt/jetty", "-jar", "/opt/jetty/start.jar"]
