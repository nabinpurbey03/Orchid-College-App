import 'package:flutter/material.dart';
import 'package:orchid_app/constants.dart';

class Elements extends StatelessWidget {
  const Elements({
    super.key,
    required this.text,
    required this.imageLocation,
    required this.onPressed,
  });

  final String text;
  final String imageLocation;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function(),
      child: Stack(children: [
        Container(
            // height: 250,
            // width: 250,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset.fromDirection(5, -10),
                      color: Colors.grey.shade400,
                      blurRadius: 10)
                ])),
        Positioned(
          top: 10,
          left: 5,
          child: SizedBox(
            height: 150,
            width: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                imageLocation,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 155,
          child: SizedBox(
            height: 40,
            width: 200,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 25,
                  color: oPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
