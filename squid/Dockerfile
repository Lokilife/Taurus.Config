FROM alpine:3.20

RUN apk add --no-cache squid

RUN mkdir -p /var/cache/squid /var/log/squid && \
    chown -R squid:squid /var/cache/squid /var/log/squid

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/entrypoint.sh"]
