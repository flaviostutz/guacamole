#!/bin/sh

GP="/root/.guacamole/guacamole.properties"
# https://www.tecmint.com/guacamole-access-remote-linux-windows-machines-via-web-browser/
if [ ! -f $GP ]; then
    echo "user-mapping: /root/.guacamole/user-mapping.xml" > $GP
fi

echo "Starting Guacamole..."
/opt/guacamole/bin/start.sh

