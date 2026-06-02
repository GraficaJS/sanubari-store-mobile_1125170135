package config

import (
	"database/sql"

	_ "github.com/go-sql-driver/mysql"
)

var DB *sql.DB

func ConnectDB() {

	db, err := sql.Open(
		"mysql",
		"root:admin@tcp(127.0.0.1:3306)/sanubari_store",
	)

	if err != nil {
		panic(err)
	}

	DB = db
}
