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

ADD http://mirror.ox.ac.uk/sites/rsync.apache.org/activemq/apache-activemq/5.9.0/apache-activemq-5.9.0-bin.tar.gz /opt/apache-activemq-5.9.0-bin.tar.gz
RUN tar -xzf /opt/apache-activemq-5.9.0-bin.tar.gz -C /opt/

EXPOSE 61616 8161

CMD java -Xms1G -Xmx1G -Djava.util.logging.config.file=logging.properties -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote -Djava.io.tmpdir=/opt/apache-activemq-5.9.0/tmp -Dactivemq.classpath=/opt/apache-activemq-5.9.0/conf -Dactivemq.home=/opt/apache-activemq-5.9.0 -Dactivemq.base=/opt/apache-activemq-5.9.0 -Dactivemq.conf=/opt/apache-activemq-5.9.0/conf -Dactivemq.data=/opt/apache-activemq-5.9.0/data -jar /opt/apache-activemq-5.9.0/bin/activemq.jar start

