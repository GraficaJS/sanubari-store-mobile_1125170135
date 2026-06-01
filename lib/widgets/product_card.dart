import 'package:flutter/material.dart';
import '../screens/product_detail_page.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailPage(
              name: name,
              image: image,
              price: price,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(price),
            ],
          ),
        ),
      ),
    );
  }
}
