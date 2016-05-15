FROM alpine:edge

EXPOSE 8118

RUN apk --update add privoxy

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
