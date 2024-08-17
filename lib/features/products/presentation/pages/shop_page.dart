// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unisoft_ecomerce_test/core/constants.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            //SEARCH BAR
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Constants.paddingMedium),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search"), Icon(Icons.search)],
                ),
              ),
            ),

            //MESSAGES
            Padding(
              padding: const EdgeInsets.all(Constants.paddingSmall),
              child: Text(
                Constants.appMessage,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            //HOT PICKS

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            )

            //LISTS OF PRODUCTS
          ],
        ),
      ),
    );
  }
}
