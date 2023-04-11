import 'dart:async';


import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:orchid_app/constants.dart';

import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFAE9FA),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: SizedBox(
                height: 120,
                child: Image(image: AssetImage("assets/images/TU_logo.png"))),
          ),
          AnimatedTextKit(
            totalRepeatCount: 1,
            animatedTexts: [
              TypewriterAnimatedText(" TRIBHUVAN UNIVERSITY AFFILIATE",
                  speed: const Duration(milliseconds: 100),
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      // fontFamily: "FjallaOne-Regular",
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          const Image(image: AssetImage("assets/images/orchid_logo.png")),
          const Text(
            "We believe in Quality education,\n                We deliver the Quality education",
            style: TextStyle(
                fontFamily: "Lobster-Regular",
                fontSize: 21,
                color: oPrimaryColor),
          ),
          const Spacer(),
          const Text(
            "© Nabin Purbey",
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    ));
  }
}
