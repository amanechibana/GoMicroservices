# # base go image
# FROM golang:1.18-alpine as builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# RUN go env -w CGO_ENABLED=0 && go build -o brokerApp ./cmd/api

# RUN chmod +x /app/brokerApp

#build a tiny docker image
FROM alpine:latest

RUN mkdir /app

COPY brokerApp /app

CMD [ "/app/brokerApp" ]