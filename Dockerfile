FROM alpine:3.11.5
WORKDIR /home
RUN apk add wget openjdk8-jre tar vim bash
RUN export JAVA_HOME=/usr/bin/java
RUN wget http://archive.apache.org/dist/kafka/2.0.0/kafka_2.11-2.0.0.tgz
RUN tar -xvf kafka_2.11-2.0.0.tgz && cd kafka_2.11-2.0.0/bin
WORKDIR /home/kafka_2.11-2.0.0/bin
CMD [/bin/bash]
