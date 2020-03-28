all: tidy
	go build .

tidy:
	go mod tidy

clean:
	rm -f go.sum

test:
	go test -v -race  .

.PHONY: all tidy clean test

include .make/lint.mk
