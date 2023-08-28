import 'package:flutter/material.dart';
import 'package:kadhai/components/textfield.dart';
import 'package:kadhai/components/get_OTP_button.dart';

class signUp_screen extends StatefulWidget {
  const signUp_screen({super.key});
  static String id = 'signUp_screen';

  @override
  State<signUp_screen> createState() => _signUp_screenState();
}

class _signUp_screenState extends State<signUp_screen> {
  final mobile_controller = TextEditingController();
  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 252, 204, 10), Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //LOGO
              Image.asset('images/kadhai.png'),
              //Enter Name
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: textfield(
                  controller: name_controller,
                  hintText: 'Name',
                ),
              ),

              //Enter mobile

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: textfield(
                  controller: mobile_controller,
                  hintText: 'Mobile Number',
                ),
              ),
              //Enter Email
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: textfield(
                  controller: email_controller,
                  hintText: 'Email ID',
                ),
              ),

              //Get Otp button
              getOTP_button(
                onTap: () {},
              ),
              Image(
                image: AssetImage('images/kolkata.png'),
                fit: BoxFit.fitHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
