MIGRATE_CONFIG:="./migrations/dbconfig.yml"

run:
	go run main.go

migrate-up:
	sql-migrate up -config=$(MIGRATE_CONFIG) -env="localhost"

migrate-down:
	sql-migrate down -config=$(MIGRATE_CONFIG) -env="localhost"