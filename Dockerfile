FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    iputils-ping \
    iproute2 \
    curl \
 && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
