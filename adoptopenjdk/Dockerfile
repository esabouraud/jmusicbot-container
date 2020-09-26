ARG TAG=jre
FROM adoptopenjdk/openjdk11:$TAG

ENV VERSION 0.2.10

ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION-Linux.jar /jmusicbot/JMusicBot.jar

COPY config.txt /jmusicbot/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
