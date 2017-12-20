# BitTorrent and OpenVPN docker-compose

This repo is a small setup for running bittorrent through OpenVPN.

For the bittorrent server, I've selected [Deluge](http://deluge-torrent.org/).

It has been tested on a Raspberry PI using ExpressVPN, but should work on other hardware, as it uses
debian multi-architecture base images.

On the OpenVPN provider side of things, I've tested it with ExpressVPN config.

Note that I needed the tcpproxy to expose the ports of the deluge docker machine.  For reasons 
I do not fully understand, I was not able to export the ports of deluge service outside of the 
localhost, and so needed to forward the tcp/ip ports in this manner.

I've left an incomplete Dockerfile set up for transmission, as I'd like to get Transmission working 
in the future, and replace deluged.

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

