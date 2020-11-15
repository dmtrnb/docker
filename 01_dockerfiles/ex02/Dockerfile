FROM 		ruby:alpine3.12
ONBUILD RUN	apk update && apk add \
			build-base \
			sqlite-dev \
			sqlite \
			nodejs \
			tzdata \
			yarn \
		&& rm -rf /var/cache/apk/*

ONBUILD WORKDIR	/opt
ONBUILD RUN	gem install bundler rails && rails new app
ONBUILD WORKDIR	/opt/app
ONBUILD RUN	rails generate model User name:string level:float \
		&& echo "users = User.create([{ name: 'nhamill', level: 8.88  }, { name: 'komogori', level: 6.09 }])" >> db/seed.rb \
		&& rake db:create && rake db:migrate && rake db:seed \
		&& echo -e '<html>\n<head>\n\t<title>Hello!</title>\n</head>\n<body>\n\t<h1>Hello World!</h1>\n\t<p>I think that it`s app.</p>\n</body>\n</html>' >> public/hello.html
