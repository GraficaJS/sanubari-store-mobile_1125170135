import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      "Adidas",
      "Nike",
      "New Balance",
      "Converse",
      "Puma",
      "Vans",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategori"),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.category),
              title: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}
