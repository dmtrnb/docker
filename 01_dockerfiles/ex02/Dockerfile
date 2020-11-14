FROM 	ruby:alpine3.12
RUN	apk update && apk add \
		build-base \
		mariadb-dev \
		sqlite-dev \
		sqlite \
		nodejs \
		tzdata \
		yarn \
	&& rm -rf /var/cache/apk/*

RUN gem install bundler rails
WORKDIR /opt
RUN rails new app
CMD rails s
