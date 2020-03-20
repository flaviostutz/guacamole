FROM guacamole/guacamole:1.1.0

ADD startup.sh /
# ADD guacamole-add.sh /
# ADD user-mapping.xml /

CMD [ "/startup.sh" ]
