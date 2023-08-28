import 'package:flutter/material.dart';

class next_button extends StatelessWidget {
  const next_button({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        width: 180,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}
