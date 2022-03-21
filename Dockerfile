FROM golang:1.16

WORKDIR /go_shop/server

COPY . .

EXPOSE 8080
