build:
	docker build -t clojure-dev-container .

shell:
	docker run --init --rm -it clojure-dev-container
