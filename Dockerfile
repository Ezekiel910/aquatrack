FROM tomcat:10-jdk17
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY AquaTrack.war /tmp/AquaTrack.war
RUN mkdir -p /usr/local/tomcat/webapps/ROOT \
    && cd /usr/local/tomcat/webapps/ROOT \
    && jar -xf /tmp/AquaTrack.war \
    && rm /tmp/AquaTrack.war
CMD ["catalina.sh", "run"]
