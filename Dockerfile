FROM tomcat:8.5.84
COPY target/hello-world-war-1.0.0*.war /usr/local/tomcat/webapps/hello-world-war-1.0.0.war
CMD [“catalina.sh”, “run”]
