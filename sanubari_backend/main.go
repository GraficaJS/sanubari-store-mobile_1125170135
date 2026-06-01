package main

import (
	"sanubari_backend/config"
	"sanubari_backend/routes"

	"github.com/gin-gonic/gin"
)

func main() {
	config.ConnectDB()

	r := gin.Default()

	routes.SetupRoutes(r)

	r.Run(":8080")

}
