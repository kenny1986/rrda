FROM golang:alpine

RUN apk add --update git mercurial && rm -rf /var/cache/apk/*

RUN go get github.com/fcambus/rrda

EXPOSE 80
#RUN pwd
CMD ["rrda", "-host=0.0.0.0", "-port=80"]
