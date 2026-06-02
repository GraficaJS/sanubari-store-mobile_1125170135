package controllers

import (
	"net/http"
	"sanubari_backend/config"
	"sanubari_backend/models"

	"github.com/gin-gonic/gin"
)

func GetProducts(c *gin.Context) {

	rows, err := config.DB.Query(`
		SELECT
		id,
		name,
		brand,
		description,
		image_url,
		price,
		stock
		FROM products
	`)

	if err != nil {

		c.JSON(
			http.StatusInternalServerError,
			gin.H{
				"error": err.Error(),
			},
		)

		return
	}

	defer rows.Close()

	var products []models.Product

	for rows.Next() {

		var product models.Product

		rows.Scan(
			&product.ID,
			&product.Name,
			&product.Brand,
			&product.Description,
			&product.ImageURL,
			&product.Price,
			&product.Stock,
		)

		products = append(
			products,
			product,
		)
	}

	c.JSON(
		http.StatusOK,
		products,
	)
}
