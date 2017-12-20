FROM resin/rpi-raspbian

RUN apt-get -qq update
RUN apt-get install -y socat

COPY run.sh  /

ENTRYPOINT ["/run.sh"]

