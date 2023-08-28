import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadhai/components/next_button.dart';
import 'package:kadhai/screens/log_screens/signin_screen.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({super.key});
  static String id = 'welcome_screen';

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(255, 246, 149, 46), Colors.white],
        ),
      ),
      child: Scaffold(
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
              SizedBox(
                height: 80,
              ),

              //Welcome  text
              Text(
                "Welcome to Kadhai",
                style: GoogleFonts.griffy(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                )),
              ),

              //next button
              next_button(
                onTap: () {
                  Navigator.pushNamed(context, signin_page.id);
                },
              ),
              SizedBox(
                height: 60,
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
