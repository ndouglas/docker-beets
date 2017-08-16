FROM alpine:latest
MAINTAINER Nathan Douglas <docker@tenesm.us>
ENV BEETSDIR /config
RUN set -xe \
  && apk add --no-cache \
    faac \
    faad2 \
    ffmpeg \
    flac \
    imagemagick \
    lame \
    libvorbis \
    nano \
    opus \
    py-pip \
    python \
  && pip install -U pip \
  && pip install -U \
    beautifulsoup4 \
    beets \
    discogs-client \
    pathlib \
    pyacoustid \
    pylast \
    pyxdg \
    requests 

VOLUME /config /data /music
