#FROM docker.io/library/ubuntu:18.04
#RUN apt-get -y update && apt-get -y upgrade
#RUN apt-get -y install openjdk-8-jdk wget
#RUN mkdir /usr/local/tomcat
#ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.16/bin/apache-tomcat-10.1.16.tar.gz  /tmp/apache-tomcat-10.1.16.tar.gz
#RUN cd /tmp &&  tar xvfz apache-tomcat-10.1.16.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-10.1.16/* /usr/local/tomcat/
#ADD **/*.war /usr/local/tomcat/webapps
#EXPOSE 8090
#CMD /usr/local/tomcat/bin/catalina.sh run
FROM tomcat:9
ADD **/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]

