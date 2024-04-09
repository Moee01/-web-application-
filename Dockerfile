FROM golang:1.16-alpine as builder

WORKDIR /app

COPY . .

RUN go build -o app .

FROM alpine:latest  

COPY --from=builder /app/app /app/app

EXPOSE 8080

CMD ["/app/app"]
