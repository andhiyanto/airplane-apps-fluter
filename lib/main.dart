import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/getstarted.dart';
import 'ui/pages/bonus_page.dart';
// ignore: duplicate_import
import 'ui/pages/signup_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainPage(),
        '/get-started': (context) => GetStarted(),
        '/sign-up': (context) => signUpPage(),
        '/bonus': (context) => BonusPage(),
        '/mainpage': (context) => MainPage(),
      },
    );
  }
}
