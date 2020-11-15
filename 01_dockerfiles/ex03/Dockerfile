FROM	ubuntu
RUN	apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get install -y \
		curl openssh-server ca-certificates postfix
RUN	curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash \
	&& EXTERNAL_URL="https://gitlab.com/nhamill21" apt-get install -y gitlab-ce
#RUN	apt-get update -y && apt-get upgrade -y && DEBIAN_FRONTEND="noninteractive" apt-get install -y \
#		make \
#		git \
#		golang-go \
#		node.js \
#		postgresql \
#		redis \
#		ruby \
#		yarn \
#		sudo \
#	&& rm -rf /var/cache/apk/*
#WORKDIR	/home/gi
#RUN	useradd -p $(echo 21) gi && usermod -aG sudo gi && chown gi:gi /home/gi
#USER	gi
#RUN	git clone https://gitlab.com/gitlab-org/gitlab-development-kit.git
#WORKDIR	/home/gi/gitlab-development-kit
#RUN	echo 21 | make bootstrap
#RUN	gdk install gitlab_repo=https://gitlab.com/gitlab-org/gitlab-foss.git
