FROM alpine:3.11.3

RUN apk add --no-cache openssl \
	squid

EXPOSE 22 3128

VOLUME /etc/squid/

CMD ["/bin/sh"]