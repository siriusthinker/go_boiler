FROM golang:1.9-alpine

RUN apk add --no-cache ca-certificates \
        dpkg \
        gcc \
        git \
        musl-dev \
        bash

ADD ./src /go/src/app
WORKDIR /go/src/app
RUN go get github.com/gorilla/mux
ENV PORT=8000
CMD ["go", "run", "main.go"]