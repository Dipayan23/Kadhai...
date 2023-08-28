import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kadhai/screens/Dishes%20screen/biryani_description.dart';

import 'package:kadhai/screens/log_screens/signin_screen.dart';
import 'package:kadhai/screens/log_screens/verification_screen.dart';
import 'package:kadhai/screens/log_screens/welcome_screens.dart';
import 'package:kadhai/screens/main_screens/Meal_menu.dart';
import 'package:kadhai/screens/main_screens/description_page.dart';
import 'package:kadhai/screens/main_screens/discount_page.dart';
import 'package:kadhai/screens/main_screens/main_page.dart';
import 'package:kadhai/screens/main_screens/preferre_menu.dart';
import 'resturent pages/Dal_Makhani_page.dart';

import 'resturent pages/Idli_page.dart';
import 'resturent pages/biryani_page.dart';
import 'package:kadhai/screens/profile_screens/wishlist_page.dart';
import 'package:kadhai/screens/profile_screens/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'screens/main_screens/main_menu.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: welcome_screen.id,
      routes: {
        biryani_page.id: (context) => biryani_page(),
        profile_page.id: (context) => profile_page(),
        verification_screen.id: (context) => verification_screen(),
        welcome_screen.id: (context) => welcome_screen(),
        signin_page.id: (context) => signin_page(),
        main_page.id: (context) => main_page(),
        wishlist_page.id: (context) => wishlist_page(),
        description_page.id: (context) => description_page(),
        dal_Makhani_page.id: (context) => dal_Makhani_page(),
        idli_page.id: (context) => idli_page(),
        main_menu.id: (context) => main_menu(),
        biryani_page.id: (context) => biryani_page(),
        biryani_description.id: (context) => biryani_description(),
        preferre_menu.id: (context) => preferre_menu(),
        meal_menu.id: (context) => meal_menu(),
        disount_page.id: (context) => disount_page(),
      },
    );
  }
}
