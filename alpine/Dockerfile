FROM alpine:latest

ENV VERSION 0.2.10

RUN apk add --update --no-cache openjdk11-jre-headless libstdc++ ttf-dejavu && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /jmusicbot && \
    wget -q -O /jmusicbot/JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar

RUN apk add --update --no-cache mpg123 opus binutils && \
    rm -rf /var/cache/apk/* && \
    ln -s /usr/lib/libopus.so.0 /usr/lib/libopus.so

COPY config.txt /jmusicbot/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
