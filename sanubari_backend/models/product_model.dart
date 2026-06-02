class ProductModel {

  final int id;
  final String name;
  final String brand;
  final String description;
  final String imageUrl;
  final double price;

  ProductModel({

    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory ProductModel.fromJson(
    Map<String, dynamic> json,
  ) {

    return ProductModel(

      id: json["id"],

      name: json["name"],

      brand: json["brand"],

      description: json["description"],

      imageUrl: json["image_url"],

      price:
          double.parse(
        json["price"].toString(),
      ),
    );
  }
}
