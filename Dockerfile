FROM octoblu/etcdctl
MAINTAINER Octoblu Inc. <docker@octoblu.com>

RUN apt-get update && apt-get install -y jq netcat && rm -rf /var/lib/apt/lists/*

COPY healthcheck .
ENTRYPOINT ["./healthcheck"]
