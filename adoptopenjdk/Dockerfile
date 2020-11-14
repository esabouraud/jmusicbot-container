FROM adoptopenjdk:11-jre

ENV VERSION 0.3.2

ADD https://github.com/jagrosh/MusicBot/releases/download/$VERSION/JMusicBot-$VERSION.jar /jmusicbot/JMusicBot.jar

COPY config.txt /jmusicbot/config.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
