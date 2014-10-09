FROM alexandretoyer/debian-openjdk7jdk

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y curl
RUN curl -o opensearchserver.deb -L http://sourceforge.net/projects/opensearchserve/files/Stable_release/1.5.7/opensearchserver-1.5.7-b767.deb/download

RUN dpkg -i opensearchserver.deb
RUN sed -e 's/OPENSEARCHSERVER_DATA=\/var\/lib\/opensearchserver\/data/OPENSEARCHSERVER_DATA=\/srv\/opensearchserver\/data/' -i /etc/opensearchserver

ADD start_opensearchserver.sh /start_opensearchserver.sh

VOLUME ["/srv"]
WORKDIR /srv

EXPOSE 9090

CMD /start_opensearchserver.sh && tail -F /var/log/opensearchserver/server.out