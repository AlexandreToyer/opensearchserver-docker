#!/bin/bash

MEMORY=${MEMORY:-2}
sed -e 's/#JAVA_OPTS="-Xms1G -Xmx1G"/JAVA_OPTS="-Xms'$MEMORY'G -Xmx'$MEMORY'G"/' -i /etc/opensearchserver
service opensearchserver start