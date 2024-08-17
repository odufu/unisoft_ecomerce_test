import 'package:flutter/material.dart';
import 'package:unisoft_ecomerce_test/core/constants.dart';
import 'package:unisoft_ecomerce_test/core/widgets/buttom_nav.dart';
import 'package:unisoft_ecomerce_test/core/widgets/main_app_drawer.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Paages to display
  final List<Widget> _pages = [
    //shop pages
    const ShopPage(),

//cart Page
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          )),
      drawer: const MainAppDrawer(),
      bottomNavigationBar: MyButtomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.paddingMedium),
        child: _pages[_selectedIndex],
      )),
    );
  }
}
