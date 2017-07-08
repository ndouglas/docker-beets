FROM alpine:latest
MAINTAINER Nathan Douglas <docker@tenesm.us>
ENV BEETSDIR /config
RUN set -xe && \
  apk add --update python py-pip faac faad2 ffmpeg flac lame libvorbis opus imagemagick && \
  pip install -U pip && \
  pip install -U beets requests pylast beautifulsoup4 pathlib pyxdg pyacoustid discogs-client
VOLUME /config /data /music
