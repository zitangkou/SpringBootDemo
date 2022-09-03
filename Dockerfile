FROM scottyengineering/java11

VOLUME /tmp 

ADD ./target/SpringBootDemo-0.0.1-SNAPSHOT.jar app.jar

RUN bash -c 'touch /app.jar'

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]