.PHONY: build test hh_autoload format

build:
	docker build -t mwildehahn/graphpinator-tokenizer .

install: build
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-tokenizer composer install

hh_autoload:
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-tokenizer ./vendor/bin/hh-autoload

test:
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-tokenizer ./vendor/bin/hacktest tests

format:
	docker run -v `pwd`:/app -it mwildehahn/graphpinator-tokenizer find {src,tests} -type f -exec hackfmt -i {} \;