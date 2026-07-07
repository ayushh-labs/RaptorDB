.PHONY: fmt lint test build run clean

fmt:
	go fmt ./...

lint:
	golangci-lint run

test:
	go test -v -race -coverprofile=coverage.out ./...

build:
	go build ./...

run:
	@echo "RaptorDB has no application entrypoint (main package) implemented yet."
	@echo "Use 'make build' to verify compilation of all packages."

clean:
	go clean
	rm -f coverage.out

