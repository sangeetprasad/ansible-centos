FROM centos:7.9.2009
LABEL maintainer "sangeetkp@gmail.com"

RUN yum update -y \
&&  yum install -y openssh-server python \
&&  yum clean all \
&&  sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config \
&&  echo 'root:toor' | chpasswd \
&&  mkdir /run/sshd \
&&  mkdir /root/.ssh \
&&  ssh-keygen -A

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

