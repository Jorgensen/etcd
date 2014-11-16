FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

EXPOSE 4001 7001    

ADD https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz /opt/etcd-v0.4.6-linux-amd64.tar.gz

RUN pacman -Syu --noconfirm --needed tar
RUN tar -C /opt/ xvf /opt/etcd-v0.4.6-linux-amd64.tar.gz
RUN rm -rf /opt/etcd-v0.4.6-linux-amd64.tar.gz
RUN mv /opt/etcd-v0.4.6-linux-amd64/ /opt/etcd/

ADD run /service/etcd/run
