import 'package:flutter/material.dart';

class OrderHistoryPage
    extends StatelessWidget {

  const OrderHistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Riwayat Pesanan",
        ),
      ),

      body: ListView(

        children: const [

          ListTile(
            leading: Icon(Icons.receipt),
            title: Text("INV001"),
            subtitle:
                Text("Adidas Samba"),
            trailing:
                Text("Rp 1.500.000"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.receipt),
            title: Text("INV002"),
            subtitle:
                Text("New Balance 530"),
            trailing:
                Text("Rp 1.800.000"),
          ),
        ],
      ),
    );
  }
}
