FROM debian:stretch-slim

RUN apt-get -qq update
RUN apt-get install -y deluged deluge-console
RUN apt-get install -y psmisc
RUN apt-get install -y deluge-web

# create the config files
RUN deluged; sleep 2s; deluge-console "config -s allow_remote True"; killall deluged
RUN echo "deluge:deluge:10" >> /root/.config/deluge/auth

VOLUME ["/root/.config"]

COPY start.sh /

CMD ["/start.sh"]

