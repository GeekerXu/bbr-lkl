# bbr-lkl
使用LKL开启BBR实现网络加速（Docker版）

# 感谢dabiaoge大佬的代码，我只是备份过来方便自用

1.docker 安装

curl -sSL https://get.docker.com/ | sh

2.创建dockerfile 目录 并进入目录

mkdir -p /home/docker/bbr-lkl && cd /home/docker/bbr-lkl

3.下载dockerfile 文件

wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/dockerfile

4.创建镜像

docker build -t geekerxu/bbr-lkl:latest .

5.启动容器

docker run -d --restart=always --privileged --link $(dockername):myhost -e TARGET_HOST=myhost -e TARGET_PORT=$(加速端口) -p 8888:8888 --name lkl wuqz/lkl:latest
