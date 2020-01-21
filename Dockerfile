FROM alpine:3.11.3

RUN apk add --update --no-cache openssl \
	squid

EXPOSE 3128

CMD ["squid", "-NYCd1"]