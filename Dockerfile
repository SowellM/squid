FROM alpine:3.11.3

RUN apk add --update --no-cache openrc \
	openssl \
	squid \
	&& touch /run/openrc/softlevel \
	&& rc-update add squid default \
	&& rc-service squid start

EXPOSE 3128

VOLUME /etc/squid/

CMD ["/bin/sh"]