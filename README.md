# kafka-toolkit
Utility Docker image including Kafka binaries and scripts
Docker Hub link: https://hub.docker.com/repository/docker/gios91/kafka-toolkit

## `kafka-toolkit` main goal and usage 

`kafka-toolkit` image aims to have a ready-to-use, OS-agnostic environment to test your dockerized kafka infrastructure.

It is simple to use: you have only to specify the network on which your Kafka infrastructure relies and...here we go!  

## Usage example

### List all available commands

```
docker run --network hadoop kafka-toolkit:1.0.0 ls -l
```
Available executables refers to following Kafka binaries: http://archive.apache.org/dist/kafka/2.0.0/kafka_2.11-2.0.0.tgz

### List all available kafka topics

```
docker run --network hadoop kafka-toolkit:1.0.0 ./kafka-topics.sh --list --zookeeper 172.18.0.5:2181
```

Notes: to exec `kafka-topics.sh` commands you must specify zookeeper local IP address that you can find by `docker inspect zookeeper` command (where 'zookeeper' is the name of Zookeeper container)
