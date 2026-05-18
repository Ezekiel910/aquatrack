FROM tomcat:10-jdk17
COPY AquaTrack.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
