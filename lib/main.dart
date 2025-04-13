import 'package:flutter/material.dart';
import 'package:loginpage/screens/home_screen.dart';
import 'package:loginpage/screens/home_screen_statefull.dart';
import 'package:loginpage/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => Homescreen(),
      },
    );
  }
}
