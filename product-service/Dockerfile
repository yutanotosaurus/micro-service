FROM golang:1.18

WORKDIR /app

COPY . .

RUN go mod tidy
RUN go build -o product-service .

CMD ["./product-service"]