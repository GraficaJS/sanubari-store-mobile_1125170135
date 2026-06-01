import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../widgets/product_card.dart';
import 'category_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),

        actions: [

  IconButton(
    icon: const Icon(Icons.category),

    onPressed: () {

      Navigator.push(
        context,

        MaterialPageRoute(
          builder: (_) =>
              const CategoryPage(),
        ),
      );
    },
  ),
],
      ),

      body: Padding(

  padding:
      const EdgeInsets.all(12),

  child: GridView.count(

    crossAxisCount: 2,

    crossAxisSpacing: 10,

    mainAxisSpacing: 10,

    children: const [

      ProductCard(

        name: 'Adidas Samba',

        image:
            'https://images.unsplash.com/photo-1542291026-7eec264c27ff',

        price:
            'Rp 1.500.000',
      ),

      ProductCard(

        name:
            'New Balance 530',

        image:
            'https://images.unsplash.com/photo-1549298916-b41d501d3772',

        price:
            'Rp 1.800.000',
      ),

      ProductCard(

        name:
            'Nike Air Force',

        image:
            'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519',

        price:
            'Rp 2.000.000',
      ),

      ProductCard(

        name:
            'Converse High',

        image:
            'https://images.unsplash.com/photo-1491553895911-0055eca6402d',

        price:
            'Rp 950.000',
      ),
    ],
  ),
),
    );
  }
}
