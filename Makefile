all: tidy
	go build .

tidy:
	go mod tidy

clean:

test:
	go test -v -race  .

.PHONY: all tidy clean test

include .make/lint.mk
