FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
   git \
&& apt-get -y autoremove && rm -rf /var/lib/apt/lists/*
