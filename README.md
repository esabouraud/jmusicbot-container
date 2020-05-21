# jmusicbot-container

Run [JMusicBot](https://github.com/jagrosh/MusicBot) in a docker container.

## Build

### alpine

```sh
docker build . -t jmb-alpine -f alpine/Dockerfile
```

### debian

```sh
docker build . -t jmb-debian -f debian/Dockerfile
```

## Run

```sh
docker run --rm -ti -e JMUSICBOT_TOKEN=<Bot token> -e JMUSICBOT_OWNER=<Discord User Id> -v <Local music directory>:/music jmb-debian
```

## Known issues

- The JVM in the alpine container crashes when trying to play songs.
- Accented characters in an UTF-8 encoded playlist prevent tracks from loading.
