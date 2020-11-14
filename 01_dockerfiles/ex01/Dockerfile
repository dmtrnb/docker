FROM debian
RUN apt-get update -y && apt-get upgrade -y && apt-get install bzip2 ca-certificates -y
EXPOSE 9987/udp 10011 30033
WORKDIR /home/teamspeak
ADD https://files.teamspeak-services.com/releases/server/3.13.1/teamspeak3-server_linux_amd64-3.13.1.tar.bz2 /home/teamspeak/arch.tar
RUN tar -xvf arch.tar && rm arch.tar && mv teamspeak3-server_linux_amd64/* . && \
	rm -rf teamspeak3-server_linux_amd64/ && touch .ts3server_license_accepted
ENTRYPOINT /bin/bash ts3server_minimal_runscript.sh
