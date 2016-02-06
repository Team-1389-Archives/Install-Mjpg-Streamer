#!/bin/sh

cd `dirname $0`
ln -s `pwd`/init1.sh /etc/rc5.d/S42mjpegStream1
ln -s `pwd`/init2.sh /etc/rc5.d/S42mjpegStream2
