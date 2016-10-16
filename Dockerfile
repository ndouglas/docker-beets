FROM alpine
MAINTAINER Nathan Douglas <docker@tenesm.us>
ENV BEETSDIR /config
RUN set -xe && \
  adduser -D -u 1000 beets users && \
  apk add --update python py-pip faac faad2 ffmpeg flac lame libvorbis opus && \
  pip install -U pip && \
  pip install -U beets requests pylast beautifulsoup4 pathlib
USER beets
VOLUME /config /data
ENTRYPOINT ["/usr/bin/beet"]
