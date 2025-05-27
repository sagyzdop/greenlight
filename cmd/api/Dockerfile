FROM golang:1.24 AS builder

RUN useradd -ms /bin/sh -u 1001 app
USER app

WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY ./cmd ./cmd
COPY ./internal ./internal
RUN CGO_ENABLED=0 GOOS=linux go build -o ./greenlight ./cmd/api

FROM alpine:latest
WORKDIR /greenlight
COPY --chown=app:app --from=builder /build/greenlight ./cmd/api
# COPY --chown=app:app ./tls ./tls