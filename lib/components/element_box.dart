import 'package:flutter/material.dart';
import 'package:orchid_app/constants.dart';

class Elements extends StatelessWidget {
  const Elements({
    super.key,
    required this.text,
    required this.image,
    required this.onPressed,
  });

  final String text;
  final String image;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed as void Function(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 20,
                        offset: Offset(-15, 15))
                  ]),
            ),
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ),
            Positioned(
              top: 145,
              child: Container(
                width: 170,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: oPrimaryColor,
                    letterSpacing: 2
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
