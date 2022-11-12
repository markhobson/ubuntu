#!/bin/bash

set -e

if [ $# -eq 0 ]
then
	echo "webcam <device-number> <exposure-absolute>"
	exit 0
fi

DEVICE=0
if [ $# -eq 2 ]
then
	DEVICE=$1
	shift
fi

VALUE=$1

v4l2-ctl -d $DEVICE --set-ctrl exposure_auto=1
v4l2-ctl -d $DEVICE --set-ctrl exposure_absolute=$VALUE
