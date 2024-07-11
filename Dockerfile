FROM ubuntu:22.04

RUN apt-get update && apt-get install --no-install-recommends -y  python3 python3-uvloop python3-cryptography python3-socks libcap2-bin ca-certificates && rm -rf /var/lib/apt/lists/*
RUN setcap cap_net_bind_service=+ep /usr/bin/python3.10

RUN useradd tgproxy -u 10000

ENV pord=2024 users=09bb2d2306dfeb32eedb549acf0f56c6 domain=www.apple.com classic=false secure=true tls=true

USER tgproxy

WORKDIR /home/tgproxy/

COPY --chown=tgproxy mtprotoproxy.py config.py /home/tgproxy/

CMD ["python3", "mtprotoproxy.py"]
