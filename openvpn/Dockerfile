FROM debian:stretch-slim

RUN apt-get -qq update
RUN apt-get install -y openvpn

COPY config.ovpn pass.txt /

CMD openvpn --config /config.ovpn
