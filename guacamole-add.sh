#!/bin/sh 

#/root/.guacamole is removed in every initialization

echo "Adding custom user mapping to /root/.guacamole/guacamole.properties"
echo "user-mapping: /root/.guacamole/user-mapping.xml" >> /root/.guacamole/guacamole.properties
echo "basic-user-mapping: /root/.guacamole/user-mapping.xml" >> /root/.guacamole/guacamole.properties

echo "Adding user-mapping.xml to /root/.guacamole"
cp /user-mapping.xml /root/.guacamole/
