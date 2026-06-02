import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartPage extends StatelessWidget {

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    final cart =
        context.watch<CartProvider>();

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Keranjang',
        ),
      ),

      body: Column(

        children: [

          Expanded(

            child: ListView.builder(

              itemCount:
                  cart.items.length,

              itemBuilder:
                  (context, index) {

                final item =
                    cart.items[index];

                return ListTile(

                  title:
                      Text(item.name),

                  subtitle:
                      Text(
                    "Qty : ${item.qty}",
                  ),

                  trailing:
                      Text(
                    "Rp ${item.price}",
                  ),
                );
              },
            ),
          ),

          Padding(

            padding:
                const EdgeInsets.all(16),

            child: Column(

              children: [

                Text(
                  "Total : Rp ${cart.total}",
                ),

                ElevatedButton(

                  onPressed: () {},

                  child: const Text(
                    "Checkout",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
