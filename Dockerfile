FROM alpine:3

RUN apk add --update busybox-extras curl git docker gettext pandoc imagemagick font-terminus font-noto plantuml \
  chromium chromium-chromedriver xvfb-run jq tmux
RUN apk add kind kubectl --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community

ADD . /root
WORKDIR /root

CMD sh
