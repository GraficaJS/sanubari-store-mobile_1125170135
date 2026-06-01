package routes

import (
	"sanubari_backend/controllers"

	"github.com/gin-gonic/gin"
)

func SetupRoutes(r *gin.Engine) {

	api := r.Group("/api")

	{
		api.GET(
			"/products",
			controllers.GetProducts,
		)
	}
}
