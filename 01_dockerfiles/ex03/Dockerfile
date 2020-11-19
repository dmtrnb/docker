FROM	ubuntu

ARG	host

RUN	apt-get update && apt-get install -y \
		curl \
		openssh-server \
		ca-certificates \
	&& rm -rf /var/cache/apt/*

RUN	curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash \
	&& apt-get install -y gitlab-ce
    
EXPOSE	22 80 443

COPY	gitlab.rb /etc/gitlab/gitlab.rb

#RUN	sed -i "s/external_url 'http://gitlab.example.com'/external_url 'http://'$host:8080/g" /etc/gitlab/gitlab.rb

ENTRYPOINT	(/opt/gitlab/embedded/bin/runsvdir-start &) && sleep 1 &&  gitlab-ctl reconfigure && gitlab-ctl start && tail -f /dev/null
