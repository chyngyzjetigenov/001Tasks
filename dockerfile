FROM golang:1.18.1

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

RUN go build -o /godocker

EXPOSE 8080

CMD [ "/godocker" ]