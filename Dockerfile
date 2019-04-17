FROM nginx:1.14.2

MAINTAINER Hoang Vuong <vuonghq3@fpt.com.vn>

# Set timezone to Ho_Chi_Minh
RUN pk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime \
    && echo "Asia/Ho_Chi_Minh" > /etc/timezone


COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
