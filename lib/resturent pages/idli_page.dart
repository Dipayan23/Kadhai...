import 'package:flutter/material.dart';
import 'package:kadhai/components/resturent_button.dart';
import 'package:kadhai/screens/Dishes screen/biryani_description.dart';
import 'package:kadhai/screens/profile_screens/wishlist_page.dart';

import '../../components/NavBar.dart';

class idli_page extends StatefulWidget {
  const idli_page({super.key});
  static String id = 'idli_page';

  @override
  State<idli_page> createState() => _idli_pageState();
}

class _idli_pageState extends State<idli_page> {
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
            title: Center(child: Text('Biryani')),
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
                  onTap: () {
                    Navigator.pushNamed(context, biryani_description.id);
                  },
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
