#!/bin/sh
#
# Starts a camera server at http://roborio-XXX.local:5800/
#

cd `dirname $0`
LD_LIBRARY_PATH=`pwd` exec ./mjpg_streamer -i  "./input_uvc.so --device /dev/video0 -f 10 -r 160x120" -o "./output_http.so --port 5800 -w www"
