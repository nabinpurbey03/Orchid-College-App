import 'package:flutter/material.dart';
import 'package:orchid_app/constants.dart';

ThemeData myMainTheme() {
  return ThemeData(
    primaryColor: oPrimaryColor,
    primaryColorLight: oPrimaryColor,
    appBarTheme: AppBarTheme(
      color: oPrimaryColor,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26,
          fontFamily: "FjallaOne-Regular"),
      bodyMedium: TextStyle(
          color: Colors.black, fontSize: 21, fontFamily: "FjallaOne-Regular"),
      bodySmall: TextStyle(
          color: Colors.black, fontSize: 16, fontFamily: "FjallaOne-Regular"),
    ),
    fontFamily: "FjallaOne-Regular",
    inputDecorationTheme: InputDecorationTheme(
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            gapPadding: 20,
            borderSide: const BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            gapPadding: 20,
            borderSide: const BorderSide(color: oPrimaryColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            gapPadding: 20,
            borderSide: const BorderSide(color: Colors.red))),
    iconTheme: const IconThemeData(
      color: oPrimaryColor,
      opticalSize: 25,
      size: 25,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: oPrimaryColor,
    ),
    // filledButtonTheme: FilledButtonThemeData(style: ButtonStyle(backgroundColor: ))
  );
}
