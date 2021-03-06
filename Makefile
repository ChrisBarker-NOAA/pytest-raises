
build:
	docker build . -t pytest-raises:dev

test: build
	docker run --rm -it pytest-raises:dev py.test --cov-report term-missing --cov
	docker run --rm -it pytest-raises:dev sh -c /src/pytest-raises/pylint.sh
