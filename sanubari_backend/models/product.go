package models

type Product struct {
	ID int `json:"id"`

	Name string `json:"name"`

	Brand string `json:"brand"`

	Description string `json:"description"`

	ImageURL string `json:"image_url"`

	Price float64 `json:"price"`

	Stock int `json:"stock"`
}
