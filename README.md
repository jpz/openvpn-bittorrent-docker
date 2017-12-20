# BitTorrent and OpenVPN docker-compose setup on raspberry pi 3

This repo is a small setup for running bittorrent through OpenVPN on a Raspberry PI.

I've used ExpressVPN OpenVPN config to do this, and the deluge client / server.

Note that I needed the tcpproxy for obscure reasons I do not fully understand,
but without it, I was not able to open up access to the ports of deluge outside
of the localhost with the ports command of docker.

I've left in an incomplete docker set up for transmission, as I'd like to 
get Transmission working in the future, and replace deluged.

To get up and running:

1) Install docker with curl on your raspberry pi with https://github.com/docker/docker-install -
   the apt packages are not up to date.

2) git clone this repo somewhere on your raspberry pi.

3) put the config.ovpn and pass.txt files in-place in the openvpn directory. 

4) run `sudo docker-compose up` to test it works.  Access the web UI with http://_host_:8112

5) stop, and re-run with `sudo docker-compose up -d` - this will create these containers as 
   self-restarting daemons, even if you reboot - no need to mess around with systemd.

Read the README.md in the openvpn directory for details about the config.ovpn and pass.txt files.

Credit to https://github.com/dperson/openvpn-client as this is adapted and simplified from that.

