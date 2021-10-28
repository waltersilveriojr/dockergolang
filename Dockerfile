FROM golang:1.17.2-stretch AS go

WORKDIR /go/src/code

COPY . .

FROM scratch

WORKDIR /go/src/code

COPY --from=go /go/src/code .

CMD ["./CodeeducationRocks"]