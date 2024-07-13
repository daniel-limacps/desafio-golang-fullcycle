# Usar a imagem do Golang com Alpine
FROM golang:alpine3.20

# instalar uma vesão do golang
RUN apk add --no-cache upx

# Criar um diretório para a aplicação
WORKDIR /usr/src/app

# Copiar o diretório atual para o diretório da aplicação no container
COPY . .

# Gerar um build o arquivo Go
RUN go build -ldflags="-s -w -v -a" -o desafio main.go

# Comprima o executável usando UPX
RUN upx --best --ultra-brute desafio

EXPOSE 9000

# Defina o comando para rodar a aplicação
CMD tail -f /dev/null