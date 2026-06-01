import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),

        actions: [
          IconButton(
            onPressed: () async {

              await AuthService().logout();

              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              }
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      body: const Center(
        child: Text("Dashboard Sanubari Store"),
      ),
    );
  }
}
