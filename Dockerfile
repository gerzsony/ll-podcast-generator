FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.10 \
  python3-pip \
  git \
  python3-yaml

#RUN pip3 install PyYAML --no-build-isolation

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh
COPY feed.yaml /usr/bin/feed.yaml
COPY feed.yaml /feed.yaml

ENTRYPOINT ["/entrypoint.sh"]