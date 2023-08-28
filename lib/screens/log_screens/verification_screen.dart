import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadhai/components/resendOTP.dart';
import 'package:kadhai/components/textfield.dart';
import 'package:kadhai/screens/log_screens/signin_screen.dart';
import 'package:kadhai/screens/main_screens/main_page.dart';

class verification_screen extends StatefulWidget {
  const verification_screen({super.key});
  static String id = 'verification_screen';

  @override
  State<verification_screen> createState() => _verification_screenState();
}

class _verification_screenState extends State<verification_screen> {
  final oTP_controller = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 252, 252, 252),
            Color.fromARGB(255, 0, 0, 0)
          ],
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //LOGO
              Image(
                image: AssetImage('images/kadhai.png'),
              ),
    
              //Welcome  text
              Text(
                "Verification Code",
                style: GoogleFonts.griffy(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
              ),
    
              //verification box
              Container(
                width: 300,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    textfield(
                      controller: oTP_controller,
                      hintText: 'Enter OTP',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    check_OTP(
                      onTap: () async {
                        try {
                          PhoneAuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: signin_page.verify,
                                  smsCode: oTP_controller.text);
    
                          // Sign the user in (or link) with the credential
                          await auth.signInWithCredential(credential);
                          Navigator.pushNamed(context, main_page.id);
                        } catch (e) {
                          print('Wrong OTP');
                        }
                      },
                    )
                  ],
                ),
              ),
    
             
              //image
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
