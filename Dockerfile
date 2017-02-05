FROM alpine
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN mkdir /var/www
COPY . /var/www/bashish
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
