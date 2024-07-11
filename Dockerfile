# Usar a imagem do Golang com Alpine
FROM golang:alpine3.20

# Criar um diretório para a aplicação
WORKDIR /usr/src/app

# Copiar o diretório atual para o diretório da aplicação no container
COPY . .

# Executar o arquivo Go
RUN go build -ldflags="-s -w" -o desafio main.go

CMD tail -f /dev/null