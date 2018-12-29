FROM nayotta/metathings-development

RUN mkdir /etc/metathings

RUN mkdir -p /go/src/github.com/satori && \
    cd /go/src/github.com/satori && \
    git clone --branch=v1.0.0 --dep=1 https://github.com/satori/go.uuid && \
    go install github.com/satori/go.uuid && \
    cd /go && \
    go get github.com/casbin/casbin && \
    go get github.com/spf13/cobra && \
    go get github.com/yuin/gopher-lua && \
    go get github.com/lovoo/goka && \
    go get github.com/casbin/gorm-adapter && \
    go get github.com/sirupsen/logrus && \
    go get github.com/parnurzeal/gorequest && \
    go get github.com/cbroglie/mustache && \
    go get github.com/go-redis/redis && \
    go get github.com/grpc-ecosystem/go-grpc-middleware/auth && \
    go get github.com/grpc-ecosystem/go-grpc-middleware/util/metautils && \
    go get github.com/mattn/go-sqlite3 && \
    go get github.com/nayotta/viper && \
    go get go.uber.org/fx && \
    go get golang.org/x/crypto/bcrypt && \
    go get golang.org/x/crypto/ssh/terminal && \
    go get golang.org/x/sync/errgroup && \
    go get google.golang.org/grpc && \
    go get google.golang.org/grpc/codes && \
    go get google.golang.org/grpc/credentials && \
    go get github.com/emitter-io/go
