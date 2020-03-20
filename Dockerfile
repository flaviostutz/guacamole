FROM guacamole/guacamole:1.1.0

ADD startup.sh /
ADD user-mapping.xml /root/.guacamole/

# RUN sed -i "s/'start_guacamole'/'source /guacamole-add.sh'\n'start_guacamole'/g" /opt/guacamole/bin/start.sh

CMD [ "/startup.sh" ]