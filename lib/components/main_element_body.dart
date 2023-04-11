import 'package:flutter/material.dart';
import 'package:orchid_app/screens/home_screen.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
    required this.text,
    required this.image,
    required this.appBerTitle,
  });

  final String appBerTitle;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image), fit: BoxFit.cover, opacity: 0.4)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text(
              appBerTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            leading: IconButton(
              onPressed: () async {
                var value = await Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              icon: const Icon(Icons.arrow_back_outlined),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Lobster-Regular",
                    fontSize: 36,
                    letterSpacing: 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
