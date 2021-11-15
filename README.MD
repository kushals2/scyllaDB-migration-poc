# scyllaDB migration POC with Journey

https://github.com/db-journey/journey

## Setup
```bash
# install
go get github.com/db-journey/journey/v2
```
update DB connectionURL:  -url <*url*> on makefile

## Migration files templating
If a file in the migrations folder has the extension `.tpl` (it must match the driver file extensions, so `.cql.tpl` for cassandra drivers), it will parsed and executed using journey current environment.

Example:

```bash
$ echo "CREATE TABLE {{.TABLE}} (
   uid uuid,
   name text,
   created_time timestamp,
   PRIMARY KEY (uid, created_time)
);" >> migrations/20170707204006_template.up.cql.tpl
```

## Run template migration 

make command:  For table name use *TABLE* key to generate tables from template

```bash

# apply all available migrations
make migrate-template-up TABLE=new_template_table

# roll back all migrations
make migrate-template-down TABLE=new_template_table

```