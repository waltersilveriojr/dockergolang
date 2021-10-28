FROM golang:1.17.2-stretch AS go

WORKDIR /go/src/code

COPY . .

RUN go build

FROM scratch

WORKDIR /go/src/code

COPY --from=go /go/src/code .

CMD ["./CodeeducationRocks"]