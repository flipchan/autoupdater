this project is created by flipchan (Filip kalebo, @filipsweet on twitter) license to                     GNU GENERAL PUBLIC LICENSE

TESTED ON A DEBIAN SYSTEM

i needs to runed as a service 
 based on http://labs.telasocial.com/nodejs-forever-daemon/

root@flipchan:/etc/init.d# cat autoupdater1
#!/bin/sh
#/etc/init.d/nodeup

export PATH=$PATH:/usr/local/bin
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

case "$1" in
  start)
  exec forever --sourceDir=/root/Desktop/java_n_node/update/ -p /usr/local/bin/forever autoupdate.js 
  ;;
stop)
  exec forever stop --sourceDir=/root/Desktop/java_n_node/update/ autoupdate.js 
  ;;
*)
  echo "Usage: /etc/init.d/autoupdater1  {start|stop}"
  exit 1
  ;;
esac

exit 0

root@flipchan:/etc/init.d# chmod 755 autoupdater1

then to start it run:
/etc/init.d/autoupdater1 start