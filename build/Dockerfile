FROM ubuntu:20.04

#copy
COPY ./style /style
COPY ./game /game
COPY ./init /init

#init
RUN \
printf "dependencies\n" && \
apt-get update && \
apt-get install -y --no-install-recommends shellinabox figlet && \
rm -rf /var/lib/apt/lists/* && \
printf "passwd\n" && \
echo 'root:root' | chpasswd && \
printf "init\n" && \
ln -s /game/start.sh /usr/bin/roulette && \
chmod +x /usr/bin/roulette && \
chmod +x /init/cyberRouletteInit
