FROM alpine:3.5 as builder

RUN apk --no-cache add curl
RUN curl -sSL https://github.com/hashicorp/consul-template/archive/v0.19.2.tar.gz > /test.tar.gz

FROM alpine:3.5

COPY --from=builder /test.tar.gz /