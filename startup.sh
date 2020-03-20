#!/bin/sh

# if [ ! -f /init ]; then

#     # https://www.tecmint.com/guacamole-access-remote-linux-windows-machines-via-web-browser/
#     sed -i "s/# Start tomcat/\/guacamole-add.sh/g" /opt/guacamole/bin/start.sh

# fi

echo "Starting Guacamole..."
/opt/guacamole/bin/start.sh
