FROM maven:3-alpine
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN mvn install

