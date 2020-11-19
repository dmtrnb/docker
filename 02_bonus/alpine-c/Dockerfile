FROM	alpine

RUN	apk update && apk add \
		openssh-server \
		nano \
		emacs \
		git \
		gdb \
		gcc \
		g++ \
		clang \
		make \
		ncurses-dev \
	&& rm -rf /var/cache/apk/*

COPY	./norminette /bin
