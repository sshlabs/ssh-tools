FROM ubuntu:20.10
LABEL maintainer="support@sshlabs.com"

ENV APPDIR=/app

RUN mkdir $APPDIR
COPY VERSION $APPDIR
COPY generate-key.sh $APPDIR

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
    apt-get -y install apache2 && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server

ENTRYPOINT ["/app/generate-key.sh"]
