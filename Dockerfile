FROM alpine
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN mkdir /var/www
COPY . /var/www/bashish
ENTRYPOINT ["/var/www/bashish/bashi.sh"]
