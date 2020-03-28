GOLANGCI_LINT := $(GOPATH)/bin/golangci-lint

all:
	go mod tidy
	go build .

clean:

test:
	go test -v -race  .

$(GOLANGCI_LINT):
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOPATH)/bin v1.24.0

lint: $(GOLANGCI_LINT)
	$(GOLANGCI_LINT) run

.PHONY: all clean lint test
