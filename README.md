
Docker container for testing systemd services. It is based on Ubuntu 24.04 LTS and has systemd installed. It is intended for testing systemd services and daemons. The container is privileged and has all capabilities added. It also has a volume mounted at /root/ for testing. The container exposes port 8081 for testing.

## Build
```
docker build -t ubuntu-systemd .
```

## How to run
```
docker run -it --privileged --name systemd-container \
    -p 8081:8081 \
    --cap-add=ALL \
    -v /tmp/systemd-test:/root/ \
    ubuntu-systemd
```
