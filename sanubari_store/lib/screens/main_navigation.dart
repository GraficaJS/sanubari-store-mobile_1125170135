import 'package:flutter/material.dart';

import 'dashboard_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'profile_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() =>
      _MainNavigationState();
}

class _MainNavigationState
    extends State<MainNavigation> {

  int selectedIndex = 0;

  final List<Widget> pages = const [

    DashboardPage(),

    CategoryPage(),

    CartPage(),

    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        type: BottomNavigationBarType.fixed,

        onTap: (index) {

          setState(() {

            selectedIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
