FROM	ft-alpine:java

WORKDIR	/opt/

RUN	git clone --single-branch --branch getIdByLogin https://github.com/nhamill21/roger.git

EXPOSE	8083

WORKDIR	/opt/roger

ENTRYPOINT	mvn clean package && java -jar target/rogerOld-1.0-SNAPSHOT.jar
