
# Setting up secrets

To run this Dockerfile, please copy into this directory an openvpn file
named config.ovpn (e.g. downloaded from the ExpressVPN website.)

Ensure this file has the following line in it:

auth-user-pass pass.txt

Next, create a file pass.txt, with a username and password on consecutive lines.
