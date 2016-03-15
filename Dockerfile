FROM      golang:alpine

RUN apk update
RUN apk add git unzip
RUN apk add mysql-client mysql

RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.2.5/etcd-v2.2.5-linux-amd64.tar.gz -o etcd-v2.2.5-linux-amd64.tar.gz && \
    tar xzvf etcd-v2.2.5-linux-amd64.tar.gz && \
    cd etcd-v2.2.5-linux-amd64 && \
    mv etcd /bin && \
    mv etcdctl /bin

RUN curl -L -o confd https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 && \
    chmod +x confd && \
    mv confd /bin


RUN go get github.com/rakyll/boom


RUN curl -L https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_linux_amd64.zip -o consul.zip && \
    unzip consul.zip && \
    mv consul /bin && \
    rm -rf consul.zip

# ENTRYPOINT ["/go/bin/boom"]
# ENTRYPOINT ["/bin/etcdctl"]
# ENTRYPOINT ["/bin/etcd"]
# ENTRYPOINT ["/bin/confd"]

