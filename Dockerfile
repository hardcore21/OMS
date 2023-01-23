FROM maven:3.3-jdk-8 as build

WORKDIR /home/app
ADD . /home/app
RUN ["mvn","clean","install"]

FROM tomcat:8.5.43-jdk8 as oms_tomcat
COPY --from=build /home/app/target/OMS.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]