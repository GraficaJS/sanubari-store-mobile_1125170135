import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {

  final String name;
  final String image;
  final String price;

  const ProductDetailPage({

    super.key,

    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(name),
      ),

      body: Padding(

        padding:
            const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Image.network(
              image,
              height: 250,
            ),

            const SizedBox(height: 20),

            Text(
              name,

              style: const TextStyle(
                fontSize: 24,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              price,

              style: const TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Sepatu original dengan kualitas premium.",
            ),
          ],
        ),
      ),
    );
  }
}
