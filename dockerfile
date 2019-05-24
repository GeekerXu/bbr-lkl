FROM debian:latest
MAINTAINER geekerxu <flyxuchao@gmail.com>

RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/haproxy.cfg -P /root/lkl/
RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/liblkl-hijack.so -P /root/lkl/
RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/start.sh -P /root/lkl/

RUN apt-get update ;\
    apt-get install -y iptables haproxy ;\
    chmod a+x /root/lkl/start.sh

CMD  /root/lkl/start.sh

