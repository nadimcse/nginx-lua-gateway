FROM openresty/openresty:centos



RUN /usr/local/openresty/bin/opm get SkyLothar/lua-resty-jwt

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY base-validation.lua usr/local/openresty/nginx/base-validation.lua

CMD ["/usr/bin/openresty", "-g", "daemon off;"]


