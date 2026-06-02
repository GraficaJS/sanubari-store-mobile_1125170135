import 'package:flutter/material.dart';
import 'auth/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(
      const Duration(seconds: 2),
      () {

        Navigator.pushReplacement(
          context,

          MaterialPageRoute(
            builder: (_) =>
                const LoginPage(),
          ),
        );
      },
    );

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment:
              MainAxisAlignment.center,

          children: const [

            Icon(
              Icons.shopping_bag,
              size: 100,
            ),

            SizedBox(height: 20),

            Text(
              "SANUBARI STORE",
              style: TextStyle(
                fontSize: 28,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Premium Sneakers Marketplace",
            ),
          ],
        ),
      ),
    );
  }
}
