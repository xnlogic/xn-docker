# See http://www.slashroot.in/how-do-linux-nfs-performance-tuning-and-optimization
# See http://www.gossamer-threads.com/lists/wiki/mediawiki-cvs/500057

#!/bin/sh

if [ -d /Users ]; then
    boot2docker ssh sudo umount /Users
fi
boot2docker ssh sudo /usr/local/etc/init.d/nfs-client start
boot2docker ssh sudo mount 192.168.59.3:/Users /Users -o rw,async,noatime,rsize=32768,wsize=32768,proto=tcp
