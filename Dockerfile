FROM golang:1.23-alpine

WORKDIR /app

# Copy the module definition
COPY go.mod ./

# Pre-download dependencies (none yet, but cacheable)
RUN go mod download

# Placeholder build command (commented out as no main source exists yet)
# RUN CGO_ENABLED=0 GOOS=linux go build -o /raptordb ./cmd/server

CMD ["go", "version"]
