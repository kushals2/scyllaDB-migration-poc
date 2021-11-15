migrate-template-up:
	~/go/bin/journey -url cassandra://127.0.0.1:9042/test2 --path ./migrations  migrate up

migrate-template-down:
	~/go/bin/journey -url cassandra://127.0.0.1:9042/test2 --path ./migrations  migrate down