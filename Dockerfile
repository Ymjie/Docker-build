FROM ubuntu:20.04

RUN apt-get update && apt-get install --no-install-recommends -y python3 python3-uvloop python3-cryptography python3-socks libcap2-bin ca-certificates net-tools && rm -rf /var/lib/apt/lists/*
EXPOSE 443

USER root

WORKDIR /home/tgproxy/

COPY mtprotoproxy.py config.py /home/tgproxy/

CMD ["python3", "mtprotoproxy.py"]
