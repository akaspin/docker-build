FROM alpine:3.5 as builder

RUN apk --no-cache add git
RUN env > 1.txt
ADD * ./
RUN git describe --tags --always > 2.txt

FROM alpine:3.5

COPY --from=builder /1.txt /2.txt /