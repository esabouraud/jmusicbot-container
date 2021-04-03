#!/usr/bin/env sh
set -e

if [ -z "$JMUSICBOT_TOKEN" ]; then
    1>&2 echo "JMUSICBOT_TOKEN environment variable is not set"
    exit 1
fi
if [ -z "$JMUSICBOT_OWNER" ]; then
    1>&2 echo "JMUSICBOT_OWNER environment variable is not set"
    exit 1
fi

cd jmusicbot
if [ -z "$JMUSICBOT_SERVERSETTINGS" ]; then
    1>&2 echo "JMUSICBOT_SERVERSETTINGS environment variable is not set"
else
    echo "$JMUSICBOT_SERVERSETTINGS" > serversettings.json
fi
sed -i -E "s%^(token = ).*$%\1$JMUSICBOT_TOKEN%g" config.txt
sed -i -E "s%^(owner = ).*$%\1$JMUSICBOT_OWNER%g" config.txt
#sed -i -E "s%^(playlistsfolder = ).*$%\1/music/Playlists%g" config.txt
sed -i -E "s%^(prefix = ).*$%\1\"!!\"%g" config.txt
exec java -Dnogui=true -jar JMusicBot.jar
