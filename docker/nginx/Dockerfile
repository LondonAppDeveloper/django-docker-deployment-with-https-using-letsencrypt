FROM nginxinc/nginx-unprivileged:1-alpine

COPY ./nginx/* /etc/nginx/
COPY ./openssl.conf.tpl /etc/openssl.conf.tpl
COPY ./run.sh /run.sh

ENV APP_HOST=app
ENV APP_PORT=9000

USER root

RUN apk add --no-cache openssl bash
RUN mkdir -p /vol/www && chown nginx:nginx /vol/www && \
    touch /etc/openssl.conf && chown nginx:nginx /etc/openssl.conf && \
    chmod +x /run.sh

VOLUME /vol/static
VOLUME /vol/www

CMD ["/run.sh"]
