all:
	go build .

include .make/golangci-lint.mk

tidy:
	go mod tidy

lint: $(GOLANGCI_LINT)
	$(realpath $(GOLANGCI_LINT)) run

clean:
	rm -f go.sum

test:
	go test -v -race  .

.PHONY: all tidy lint clean test
