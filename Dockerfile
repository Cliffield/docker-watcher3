FROM lsiobase/alpine.python3:3.6
MAINTAINER sparklyballs

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

# install app
RUN \
 git clone -b german --depth=1 --single-branch https://github.com/Cliffield/watcher3.git /app/watcher3

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 9090
VOLUME /config /downloads /Filme
