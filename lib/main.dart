import 'package:flutter/material.dart';
import 'package:loginpage/screens/home_screen.dart';
import 'package:loginpage/screens/home_screen_statefull.dart';
import 'package:loginpage/screens/login_screen.dart';
import 'package:loginpage/themes/Themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      theme: Themes.lightTheme(context),
      darkTheme: Themes.darkTheme(context),
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => Homescreen(),
      },
    );
  }
}
