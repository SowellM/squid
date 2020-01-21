FROM alpine:3.11.3

RUN apk add --update --no-cache openrc \
	openssl \
	squid

EXPOSE 3128

CMD ["squid", "-NYCd1"]