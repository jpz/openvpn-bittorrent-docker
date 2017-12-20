FROM debian:stretch-slim

RUN apt-get -qq update
RUN apt-get install -y socat

COPY run.sh  /

ENTRYPOINT ["/run.sh"]

