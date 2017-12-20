#!/bin/bash

if [ $# -ne 3 ];
then 
	echo "expected 3 arguments -  loalport remotehost remoteport"
	exit 1
fi

localport=$1
remotehost=$2
remoteport=$3

echo "TCPPROXY $1 $2 $3"

socat -d -d -ls TCP-LISTEN:$localport,reuseaddr,fork,su=nobody TCP:$remotehost:$remoteport

