FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y firefox xfce4 xfce4-goodies tightvncserver novnc websockify wget curl python3 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /root/
WORKDIR /root/

EXPOSE 5901
EXPOSE 6080

CMD ["bash", "start.sh"]