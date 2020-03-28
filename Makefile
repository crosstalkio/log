GLANGCI_LINT := $(GOPATH)/bin/golangci-lint

all:
	go mod tidy
	go build .

test:
	go test -v -race  .

$(GLANGCI_LINT):
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOPATH)/bin v1.24.0

lint: $(GLANGCI_LINT)
	$(GLANGCI_LINT) run

.PHONY: all lint test
