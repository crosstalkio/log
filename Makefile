GLANGCI_LINT := $(GOPATH)/bin/golangci-lint

all:
	go mod tidy
	go build .

$(GLANGCI_LINT):
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(GOPATH)/bin v1.23.1

lint:
	$(GLANGCI_LINT) run

.PHONY: all lint
