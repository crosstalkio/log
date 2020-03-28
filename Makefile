all:
	go mod tidy
	go build .

clean:

test:
	go test -v -race  .

.PHONY: all clean test

include lint.mk
