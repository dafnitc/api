include .env
export

postgres:
	docker run --name postgres16 -e POSTGRES_USER=$(POSTGRES_USER) -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} -p 5432:5432 -d postgres:16-alpine

# connect to db from terminal
# docker exec -it postgres16 psql -U ${POSTGRES_USER} daf

postgres-start:
	docker start postgres16

postgres-stop:
	docker stop postgres16

createdb:
	docker exec -it postgres16 createdb --username=$(POSTGRES_USER) --owner=$(POSTGRES_USER) daf

dropdb:
	docker exec -it postgres16 dropdb daf

migrateup:
	migrate -path db/migration -database "$(DATABASE_URL)?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "$(DATABASE_URL)?sslmode=disable" -verbose down

sqlc:
	sqlc generate

test:
	go test -v -cover ./...

# Build the application
all: build

build:
	@echo "Building..."
	@go build -o main cmd/api/main.go

# Run the application
run:
	@go run cmd/api/main.go

# Clean the binary
clean:
	@echo "Cleaning..."
	@rm -f main

.PHONY: all build run test clean
		