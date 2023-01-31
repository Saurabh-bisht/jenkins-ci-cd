FROM centos:latest
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.71.tar.gz
RUN mv apache-tomcat-9.0.71/* /opt/tomcat
Expose 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
