import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kadhai/components/Sign_up_button.dart';
import 'package:kadhai/components/get_OTP_button.dart';
import 'package:kadhai/components/textfield.dart';

import 'package:kadhai/screens/log_screens/verification_screen.dart';

class signin_page extends StatefulWidget {
  const signin_page({super.key});
  static String id = 'signin_screen';
  static String verify = "";

  @override
  State<signin_page> createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {
  final mobile_controller = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //LOGO
              Image.asset('images/kadhai.png'),
              //Enter mobile
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: textfield(
                      controller: mobile_controller,
                      hintText: 'Mobile Number',
                    ),
                  ),

                  //Get Otp button
                  getOTP_button(
                    onTap: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '+91 ${mobile_controller.text}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          signin_page.verify = verificationId;
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                      Navigator.pushNamed(context, verification_screen.id);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              //Sign Up button
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
