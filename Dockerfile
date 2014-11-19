FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV ETCD_VERSION v0.4.6
ENV ETCD_DATA_DIR /srv/etcd/

VOLUME ["/srv/etcd"]
EXPOSE 4001 7001    

ADD https://github.com/coreos/etcd/releases/download/$ETCD_VERSION/etcd-$ETCD_VERSION-linux-amd64.tar.gz /opt/etcd-$ETCD_VERSION-linux-amd64.tar.gz

RUN pacman -Syu --noconfirm --needed tar
RUN tar xvf /opt/etcd-$ETCD_VERSION-linux-amd64.tar.gz -C /opt/
RUN rm -rf /opt/etcd-$ETCD_VERSION-linux-amd64.tar.gz
RUN mv /opt/etcd-$ETCD_VERSION-linux-amd64/ /opt/etcd/

ADD run /service/etcd/run
