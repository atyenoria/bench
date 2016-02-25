FROM      golang:alpine

RUN apk update
RUN apk add git



RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.2.5/etcd-v2.2.5-linux-amd64.tar.gz -o etcd-v2.2.5-linux-amd64.tar.gz && \
    tar xzvf etcd-v2.2.5-linux-amd64.tar.gz && \
    cd etcd-v2.2.5-linux-amd64 && \
    mv etcd /bin && \
    mv etcdctl /bin
RUN go get github.com/rakyll/boom



ENTRYPOINT ["/go/bin/boom"]
# ENTRYPOINT ["/bin/etcdctl"]
# ENTRYPOINT ["/bin/etcd"]

