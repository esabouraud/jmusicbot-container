FROM adoptopenjdk/openjdk11:alpine-jre

ENV VERSION 0.2.8

RUN mkdir -p /jmusicbot && \
    wget -q -O /jmusicbot/JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar  && \
    wget -q -O /jmusicbot/config.txt https://github.com/jagrosh/MusicBot/releases/download/$VERSION/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
