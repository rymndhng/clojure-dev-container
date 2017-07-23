yopa/yopa-1.0.0-SNAPSHOT-standalone.jar:
	curl --quiet https://github.com/unbounce/yopa/releases/download/1.0.0-SNAPSHOT/yopa-1.0.0-SNAPSHOT-standalone.jar > yopa/yopa-1.0.0-SNAPSHOT-standalone.jar

build: yopa/yopa-1.0.0-SNAPSHOT-standalone.jar
	docker build -t clojure-dev-container .

shell:
	docker run --init --rm -it clojure-dev-container
