FROM debian:latest

ENV VERSION 0.2.8

RUN apt-get update && \
    apt-get install -y \
        wget \
        openjdk-11-jre-headless \
    && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /jmusicbot && \
    wget -q -O /jmusicbot/JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar  && \
    wget -q -O /jmusicbot/config.txt https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
