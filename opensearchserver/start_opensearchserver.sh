#!/bin/bash

MEMORY=${MEMORY:-1512m}
# always stops service
service opensearchserver stop
sed -e 's/#JAVA_OPTS="-Xms1G -Xmx1G"/JAVA_OPTS="-Xms'$MEMORY' -Xmx'$MEMORY'"/' -i /etc/opensearchserver
service opensearchserver start