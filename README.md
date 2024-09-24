
Docker container for testing systemd services. It is based on Ubuntu 24.04 LTS and has systemd installed. It is intended for testing systemd services and daemons.

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-jezeklu/docker--ubuntu--systemd-blue?logo=docker&style=flat)](https://hub.docker.com/r/jezeklu/docker-ubuntu-systemd)

**Key features**
* The container is privileged and has all capabilities added.
* It also has a volume (*/tmp/systemd-test*) mounted at */root/* for testing.
* For web services the container exposes port *8081* for testing.

## How to run it
```
# mkdir /tmp/systemd-test
# docker run -it --privileged --name systemd-container \
     -p 8081:8081 \
     --cap-add=ALL \
     -v /tmp/systemd-test:/root/ \
     jezeklu/docker-ubuntu-systemd:latest
```

## Help develop
```
# clone repository
git clone git@github.com:jezeklu/docker-ubuntu-systemd.git

# make changes
vim docker-ubuntu-systemd/Dockerfile

# build image localy and test it
docker build -t ubuntu-systemd .
```