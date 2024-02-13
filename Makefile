migrateup:
	migrate -path migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose up

migratedown:
	migrate -path migrations -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose down

.PHONY: migrateup migratedown
