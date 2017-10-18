FROM alpine:edge
MAINTAINER yanm yanm@chinatelecom.cn
USER root

#copy files
COPY depend /usr/local/


RUN  echo "https://mirrors.ustc.edu.cn/alpine/edge/main" > /etc/apk/repositories && \
echo "https://mirrors.ustc.edu.cn/alpine/edge/community" >> /etc/apk/repositories && \
apk add --update --no-cache make gcc g++ perl && \
cd /usr/local/src/nginx-1.12.1 && \
./configure --prefix=/usr/local/src/nginx \
--with-http_realip_module \
--with-http_sub_module \
--with-http_flv_module \
--with-http_dav_module \
--with-http_gzip_static_module \
--with-http_stub_status_module \
--with-http_addition_module \
--with-pcre=/usr/local/src/pcre-8.41 \
--with-openssl=/usr/local/src/openssl-1.0.2l \
--with-http_ssl_module \
--with-zlib=/usr/local/src/zlib-1.2.11 && \
make && make install && \
apk del gcc g++ make perl && \
rm -rf /var/cache/apk/* && \
rm -rf /usr/local/src/pcre-8.41 /usr/local/src/openssl-1.0.2l /usr/local/src/zlib-1.2.11 /usr/local/src/nginx-1.12.1 && \
echo "daemon off;" >> /usr/local/src/nginx/conf/nginx.conf


ENV PATH /usr/local/src/nginx/sbin:$PATH
CMD ["nginx"]


