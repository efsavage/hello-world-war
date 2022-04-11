FROM ubuntu:20.04 as slave
RUN apt-get update
RUN apt install maven

#FROM tomcat:jre8-temurin-focal
#ARG TEST=/var/lib
#COPY --from=mavenbuilder ${TEST}/target/hello-world-war-1.0.1.war /usr/local/tomcat/webapps
