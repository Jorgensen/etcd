FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV ETCD_VERSION v2.0.3
ENV ETCD_DATA_DIR /srv/etcd/

VOLUME ["/srv/etcd"]

ADD https://github.com/docku/etcd/releases/download/$ETCD_VERSION/etcd /usr/local/bin/etcd

ADD run /service/etcd/run
