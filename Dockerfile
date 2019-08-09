FROM openjdk:7
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac HelloWorld.java
CMD ["java", "Main"]




# Run app.java when the container launches

CMD ["java","HelloWorld"]
