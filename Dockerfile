FROM tomcat:8.0

COPY C:\Users\kiran.tiwari\.docker\machine\machines\default\ca.pem /usr/local/share/ca-certificates

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]