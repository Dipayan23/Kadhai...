import 'package:flutter/material.dart';
import 'package:kadhai/screens/main_screens/main_page.dart';
import 'package:kadhai/screens/profile_screens/profile_page.dart';
import 'package:kadhai/screens/profile_screens/wishlist_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.60),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, profile_page.id);
              },
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, main_page.id);
              },
              child: Text(
                'Main Page',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, wishlist_page.id);
              },
              child: Text(
                'WishList',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
