import 'package:flutter/material.dart';
import 'package:orchid_app/constants.dart';
import 'package:orchid_app/screens/home_screen.dart';
import 'package:orchid_app/screens/splash_screen.dart';
import 'package:orchid_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myMainTheme(),
      color: oPrimaryColor,
      title: "Orchid College App",
      home: const HomeScreen(),
    );
  }
}
