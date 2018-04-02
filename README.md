# docker-access-host

As of 2018-03-30.

Here is a blog post:

https://dev.to/bufferings/access-host-from-a-docker-container-4099

## How to check

Prepare a target.

```bash
# Start nginx as a target running on host
docker run -p 8888:80 --rm nginx

# You can see 8888 working on the host
curl localhost:8888
```

Let's access it from a container.

```bash
# Build
docker build -t docker-access-host:demo .

# Run. You should be able to see nginx result & hosts file
docker run --rm docker-access-host:demo

# It has host.docker.internal only when the host is Linux
```
