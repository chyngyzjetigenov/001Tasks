FROM golang:alpine

WORKDIR /app

COPY test.go .

RUN go build -o main test.go

EXPOSE 8080

CMD ["./main"]