FROM alpine:latest
CMD ["javac","HelloWorld.java"]
ADD HelloWorld.class HelloWorld.class
RUN apk --update add openjdk8-jre

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]


# Run app.java when the container launches

CMD ["java","HelloWorld.java"]
