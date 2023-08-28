import 'package:flutter/material.dart';

class check_OTP extends StatelessWidget {
  const check_OTP({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(5),
          width: 180,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 243, 204, 29),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              'Check OTP',
            ),
          ),
        ),
      ),
    );
  }
}
