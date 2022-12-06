FROM tomcat:8.5.84
COPY ./target/*.war /usr/local/tomcat/webapps/
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
EXPOSE 9090
CMD [“catalina.sh”, “run”]
