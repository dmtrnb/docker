FROM	ubuntu

ARG	host

RUN	apt-get update && apt-get install -y \
		curl \
		xterm \
		apt-utils \
		openssh-server \
		ca-certificates \
	&& rm -rf /var/cache/apt/*

ENV	TERM=xterm

RUN	curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash \
	&& apt-get install -y gitlab-ce
    
EXPOSE	22 80 443

COPY	gitlab.rb /etc/gitlab/gitlab.rb

RUN	sed -i 's/GENERATED_EXTERNAL_URL/https:\/\/'$host'/' /etc/gitlab/gitlab.rb

WORKDIR	/etc/gitlab/ssl

RUN	openssl req -newkey rsa:2048 -nodes -keyout $host.key -x509 -days 365 -out $host.crt -subj "/C=RU/ST=Moscow/L=21school/O=Russian/OU=Factory/CN=nhamill"

#ENTRYPOINT	(/opt/gitlab/embedded/bin/runsvdir-start &) && sleep 1 && gitlab-ctl reconfigure && tail -f /dev/null
