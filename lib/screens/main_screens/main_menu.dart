import 'package:flutter/material.dart';
import 'package:kadhai/components/NavBar.dart';
import 'package:kadhai/components/dish_buttons.dart';
import 'package:kadhai/resturent pages/idli_page.dart';
import 'package:kadhai/resturent pages/biryani_page.dart';
import 'package:kadhai/screens/profile_screens/wishlist_page.dart';

class main_menu extends StatefulWidget {
  const main_menu({super.key});
  static String id = 'main_menu';

  @override
  State<main_menu> createState() => _main_menuState();
}

class _main_menuState extends State<main_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Main Dishes'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, wishlist_page.id);
              },
              icon: Icon(Icons.shopping_bag))
        ],
      ),
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    dish_button(
                        image: 'images/biryani.jpg',
                        onTap: () {
                          Navigator.pushNamed(context, idli_page.id);
                        },
                        dish_name: 'Biryani'),
                   dish_button(image: 'images/dal makhani 1.jpg', onTap: (){}, dish_name: 'Dal Makhani'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 250,
                      width: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
