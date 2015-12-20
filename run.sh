#!/bin/bash

if [ ! -f /opt/gitblit-data/gitblit.properties ]; then
	cp -Rf /opt/gitblit-data-initial/* /opt/gitblit-data/
fi

chown -Rf gitblit:gitblit /opt/gitblit-data

exec sudo -u gitblit java -server -Xmx1024M -Djava.awt.headless=true -jar /opt/gitblit/gitblit.jar --baseFolder /opt/gitblit-data
