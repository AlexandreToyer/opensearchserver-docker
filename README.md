# Work in progress
---


## Docker's image for OpenSearchServer

### Clone repo

    git clone https://github.com/AlexandreToyer/opensearchserver-docker.git

### Build images

_Images are not yet on Docker Hub_

#### Image for Debian + OpenJDK

    docker build -t="alexandretoyer/debian-openjdk7jdk" ./debian-openjdk7jdk/

#### Image for OpenSearchServer

Current Dockerfile will download and use **`opensearchserver-1.5.7-b767.deb`**.

    docker build -t="alexandretoyer/opensearchserver" ./opensearchserver/

### Run a container

`/path/to/local/folder` must be a directory that must contains directories `opensearchserver/data`. It will be used as data folder by OpenSearchServer.

    docker run -d -P -v </path/to/local/folder>:/srv alexandretoyer/opensearchserver

#### Configure memory

Variable `MEMORY` can be used to configure number of GB to allow to OpenSearchServer.

    docker run -d -P -v </path/to/local/folder>:/srv -e MEMORY=4 alexandretoyer/opensearchserver
