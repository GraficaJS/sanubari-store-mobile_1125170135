import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_provider.dart';
import '../widgets/product_card.dart';

import 'category_page.dart';
import 'cart_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() =>
      _DashboardPageState();
}

class _DashboardPageState
    extends State<DashboardPage> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {

      context
          .read<ProductProvider>()
          .getProducts();
    });
  }

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

          IconButton(

            icon:
                const Icon(Icons.shopping_cart),

            onPressed: () {

              Navigator.push(

                context,

                MaterialPageRoute(

                  builder: (_) =>
                      const CartPage(),
                ),
              );
            },
          ),
        ],
      ),

      body: Consumer<ProductProvider>(

        builder:
            (context, provider, _) {

          if (provider.isLoading) {

            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          }

          return GridView.builder(

            padding:
                const EdgeInsets.all(12),

            itemCount:
                provider.products.length,

            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,

              crossAxisSpacing: 10,

              mainAxisSpacing: 10,
            ),

            itemBuilder:
                (context, index) {

              final product =
                  provider.products[index];

              return ProductCard(

                name:
                    product["name"],

                image:
                    product["image_url"],

                price:
                    "Rp ${product["price"]}",
              );
            },
          );
        },
      ),
    );
  }
}
