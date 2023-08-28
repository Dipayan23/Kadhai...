import 'package:flutter/material.dart';

class getOTP_button extends StatelessWidget {
  const getOTP_button({super.key, required this.onTap});
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
          color: Color.fromARGB(255, 239, 177, 6),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text('Get OTP'),
        ),
      ),
    );
  }
}
