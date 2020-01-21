FROM alpine:3.11.3

LABEL vendor=SowellM

RUN apk add --update --no-cache openrc \
	openssl \
	squid \
	&& cd /etc/init.d/ ; squid -k parse

EXPOSE 3128

VOLUME /etc/squid/

CMD squid -N