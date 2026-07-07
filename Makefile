.PHONY: fmt lint test build run clean

fmt:
	@find . -name "*.go" | grep -q . && go fmt ./... || echo "No Go files to format."

lint:
	@find . -name "*.go" | grep -q . && golangci-lint run || echo "No Go files to lint."

test:
	@find . -name "*.go" | grep -q . && go test -v -race -coverprofile=coverage.out ./... || echo "No Go files to test."

build:
	@find . -name "*.go" | grep -q . && go build ./... || echo "No Go files to build."

run:
	@echo "RaptorDB has no application entrypoint (main package) implemented yet."
	@echo "Use 'make build' to verify compilation of all packages."

clean:
	@find . -name "*.go" | grep -q . && go clean || true
	rm -f coverage.out


