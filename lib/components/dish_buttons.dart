import 'package:flutter/material.dart';

class dish_button extends StatelessWidget {
  const dish_button(
      {super.key,
      required this.image,
      required this.onTap,
      required this.dish_name});
  final String image;
  final String dish_name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            //Image
            Container(
              height: 140,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ),
            //Name
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                dish_name,
                style: TextStyle(fontSize: 30),
              ),
            ),
            //Buy now
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              width: 100,
              child: Center(
                child: Text('Buy Now'),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
