FROM resin/rpi-raspbian

# creating this volume means that we capture the default config 
# in this location.
#
# When we run this docker container with -v /etc/transmission:/etc/transmission
# if the directory does not exist in the host, it will be initialised with the
# default contents created below.

RUN apt-get -qq update
RUN apt-get install -y transmission-daemon transmission-cli -y
RUN sleep 3 && service transmission-daemon stop
RUN apt-get install -y psmisc

VOLUME ["/etc/transmission-daemon"]

RUN service transmission-daemon start; sleep 2

# create the config files
#RUN deluged; sleep 2s; deluge-console "config -s allow_remote True"; killall deluged
#RUN echo "deluge:deluge:10" >> /root/.config/deluge/auth

COPY start.sh /

CMD ["/start.sh"]

