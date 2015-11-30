#! /bin/sh -e
#just a test file ignore this
PATH=/usr/local/bin/node:/bin:/usr/bin:/sbin:/usr/sbin
DAEMON=/root/Desktop/java_n_node/update/autoupdate.js #where's ur app at?
case "$1" in
start) forever start $DAEMON ;;
stop) forever stop $DAEMON ;;
force-reload|restart)
forever restart $DAEMON ;;
*) echo "Usage: /etc/init.d/flipchans-autoupdater {start|stop|restart|force-reload}"
exit 1 ;;
esac
exit 0
