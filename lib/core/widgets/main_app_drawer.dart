import 'package:flutter/material.dart';

import '../constants.dart';

class MainAppDrawer extends StatelessWidget {
  const MainAppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Column(
              children: [
                // L O G O

                DrawerHeader(
                    child: Image.asset(
                  Constants.logoFile,
                  color: Colors.white,
                )),

                //D I V I D E R
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Constants.paddingMedium),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                //O T H E R S

                const Padding(
                  padding: EdgeInsets.only(left: Constants.paddingMedium),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: Constants.paddingMedium),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    title: Text(
                      "My Favorites",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: Constants.paddingMedium, bottom: Constants.paddingBig),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
