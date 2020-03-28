all:
	go mod tidy
	go build .

clean:

test:
	go test -v -race  .

.PHONY: all clean test

include .make/lint.mk
