FROM alpine
MAINTAINER Nathan Douglas <docker@tenesm.us>
ENV BEETSDIR /config
RUN set -xe && \
  adduser -D -u 1000 beets users && \
  apk add --update python py-pip faac faad2 ffmpeg flac lame libvorbis opus imagemagick && \
  pip install -U pip && \
  pip install -U beets requests pylast beautifulsoup4 pathlib pyxdg pyacoustid discogs-client
USER beets
VOLUME /config /data
ENTRYPOINT ["/usr/bin/beet"]
