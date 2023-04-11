import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 56,
      //Can use TextButton...
      //     TextButton(
      //     style: TextButton.styleFrom(
      //     shape:
      //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // primary: Colors.white,
      // backgroundColor: nPrimaryColor,
      child: FilledButton(
          onPressed: press as void Function(),
          child: Text("$text",
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}