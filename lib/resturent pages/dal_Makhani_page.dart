import 'package:flutter/material.dart';
import 'package:kadhai/components/resturent_button.dart';
import 'package:kadhai/screens/profile_screens/wishlist_page.dart';

import '../../components/NavBar.dart';

class dal_Makhani_page extends StatefulWidget {
  const dal_Makhani_page({super.key});
  static String id = 'dal_Makhani_page';

  @override
  State<dal_Makhani_page> createState() => _dal_Makhani_pageState();
}

class _dal_Makhani_pageState extends State<dal_Makhani_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.orange, Colors.white],
        ),
      ),
      child: Scaffold(
        drawer: NavBar(),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Center(child: Text('Welcome')),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, wishlist_page.id);
                  },
                  icon: Icon(Icons.shopping_bag))
            ]),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                resturent_button(
                  onTap: () {},
                  star: '3.9',
                  image: 'images/dal makhani 1',
                  res_name: 'Maa Tara Resturent',
                ),
                resturent_button(
                  onTap: () {},
                  star: '3.9',
                  image: 'images/food1.jpg',
                  res_name: 'Maa Tara Resturent',
                ),
                resturent_button(
                  onTap: () {},
                  star: '3.9',
                  image: 'images/food1.jpg',
                  res_name: 'Maa Tara Resturent',
                ),
                resturent_button(
                  onTap: () {},
                  star: '3.9',
                  image: 'images/food1.jpg',
                  res_name: 'Maa Tara Resturent',
                ),
                resturent_button(
                  onTap: () {},
                  star: '3.9',
                  image: 'images/food1.jpg',
                  res_name: 'Maa Tara Resturent',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
