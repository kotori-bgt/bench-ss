FROM teddysun/shadowsocks-libev
RUN apk add wget iperf3
WORKDIR /app
COPY . .
RUN chmod +x *
