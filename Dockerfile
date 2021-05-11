FROM golang as build_env 

ENV GOOS="linux" \
    GO111MODULE="on" \
    GOARCH="amd64" \
    GOPROXY="https://proxy.golang.org,direct" \
    CGO_ENABLED="0"

WORKDIR /root/go_release

COPY . .

RUN go build -o app .

FROM alpine

WORKDIR /root/go_release/

COPY --from=build_env /root/go_release/. .

CMD ["/root/go_release/app"]
