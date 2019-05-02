FROM golang:alpine
LABEL maintainer "Ilya Glotov <ilya@ilyaglotov.com>"

ARG REPO

RUN apk --update --no-cache add git \
  && go get -ldflags="-s -w" $REPO \
  && apk del git \
  && adduser -D app

FROM alpine:latest
COPY --from=0 /go/bin/* /bin/
COPY --from=0 /etc/passwd /etc/passwd

USER app
