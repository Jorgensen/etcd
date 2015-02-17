FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV ETCD_VERSION v2.0.3

VOLUME ["/opt/build"]

ADD https://github.com/coreos/etcd/releases/download/$ETCD_VERSION/etcd-$ETCD_VERSION-linux-amd64.tar.gz /opt/etcd-$ETCD_VERSION-linux-amd64.tar.gz

RUN pacman -Syu --noconfirm --needed tar
RUN tar xvf /opt/etcd-$ETCD_VERSION-linux-amd64.tar.gz -C /opt/

RUN mv /opt/etcd-$ETCD_VERSION-linux-amd64/etcd /opt/build/
RUN mv /opt/etcd-$ETCD_VERSION-linux-amd64/etcd-migrate /opt/build/
RUN mv /opt/etcd-$ETCD_VERSION-linux-amd64/etcdctl /opt/build/
