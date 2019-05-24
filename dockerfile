FROM debian:latest
MAINTAINER geekerxu <flyxuchao@gmail.com>

RUN apt-get update ;\
    apt-get install -y iptables haproxy wget ;\
    chmod a+x /root/lkl/start.sh

RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/haproxy.cfg -P /root/lkl/
RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/liblkl-hijack.so -P /root/lkl/
RUN wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/start.sh -P /root/lkl/

CMD  /root/lkl/start.sh

