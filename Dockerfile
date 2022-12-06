FROM tomcat:8.5.84
COPY target/hello-world-war-1.0.0*.war /usr/local/tomcat/webapps/hello-world-war-1.0.0.war
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
EXPOSE 9090
CMD [“catalina.sh”, “run”]
