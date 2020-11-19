FROM	alpine

RUN	apk update && apk add \
		openjdk8-jre \
		wget \
	&& rm -rf /var/cache/apk/*

EXPOSE	25565

WORKDIR	/opt/minecraft

RUN	wget https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar && echo "eula=true" > eula.txt

ENTRYPOINT	java -Xms1024M -jar server.jar nogui
