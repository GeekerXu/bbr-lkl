# bbr-lkl
使用LKL开启BBR实现网络加速（Docker版）

# 感谢dabiaoge大佬的代码，我只是备份过来方便自用

1.docker 安装

curl -sSL https://get.docker.com/ | sh

2.创建dockerfile 目录 并进入目录

mkdir -p /home/docker/dockerfile-bbr-lkl && cd /home/docker/dockerfile-bbr-lkl

3.下载dockerfile 文件

wget https://raw.githubusercontent.com/GeekerXu/bbr-lkl/master/dockerfile

4.创建镜像

docker build -t geekerxu/bbr-lkl:latest .

5.启动容器

这个镜像的妙处，是可以对任意网络服务器进行加速，如果你的WEB服务器运行在1234端口，那么你可以这样来对这个端口进行加速：

docker run -d --restart=always --name=bbr-lkl --privileged -e TARGET_HOST=服务器外网IP -e TARGET_PORT=1234 -p 转发端口:8888 geekerxu/bbr-lkl

这样访问服务器的80端口，就是加速后访问WEB服务器了！
