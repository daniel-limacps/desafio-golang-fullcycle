FROM golang:1.21-alpine3.20

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o desafio main.go

ENTRYPOINT [ "./desafio" ]