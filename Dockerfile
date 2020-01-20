FROM alpine:3.11.3

RUN apk add --update --no-cache openrc \
	openssl \
	squid

EXPOSE 3128

VOLUME /etc/squid/

CMD ["/etc/init.d/squid"]