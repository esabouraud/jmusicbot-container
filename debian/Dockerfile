FROM debian:latest

ENV VERSION 0.3.6

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y \
        wget \
        openjdk-11-jre-headless \
    && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /jmusicbot && \
    wget -q -O /jmusicbot/JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar

COPY config.txt /jmusicbot/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
