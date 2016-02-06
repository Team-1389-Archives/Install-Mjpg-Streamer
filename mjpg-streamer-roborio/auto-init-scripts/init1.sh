#!/bin/sh
#
# init script used to start a camera server in the background, suitable for starting the
# camera server at startup
#

PIDFILE=/var/run/mjpeg1.pid
SCRIPT=run_one.sh

case "$1" in
  start)
    if [ -e $PIDFILE -a -e /proc/`cat $PIDFILE 2> /dev/null` ]; then
      echo "$0 already started"
      exit 1
    fi

    touch $PIDFILE
    chmod +r $PIDFILE
    chown lvuser $PIDFILE

    /home/admin/mjpg-streamer-182/$SCRIPT &
    echo $! > $PIDFILE
    ;;
  stop)
    # kill saved PID
    if [[ -f "$PIDFILE" ]]; then
      kill `cat $PIDFILE`
      rm $PIDFILE
    fi
    ;;
esac
