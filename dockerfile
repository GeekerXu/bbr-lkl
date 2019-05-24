FROM debian:latest
MAINTAINER geekerxu <flyxuchao@gmail.com>

RUN apt-get update \
    && apt-get install -y iptables haproxy wget \
    && wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/haproxy.cfg -P /root/lkl/ \
    && wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/liblkl-hijack.so -P /root/lkl/ \
    && wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/start.sh -P /root/lkl/ \
    && chmod a+x /root/lkl/start.sh
    
CMD  /root/lkl/start.sh

