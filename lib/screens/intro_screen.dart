import 'package:flutter/material.dart';
import 'package:orchid_app/components/default_button.dart';
import 'package:orchid_app/constants.dart';
import 'package:orchid_app/screens/sign_in_screen/sign_in.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Map<String, String>> introPageView = [
    {"text": "Great learning environment", "image": "assets/images/image1.png"},
    {
      "text":
          "Universally accepted degree in IT, Computer Science and Management",
      "image": "assets/images/image2.png"
    },
    {
      "text": "Explore the great technology experience",
      "image": "assets/images/image3.png"
    },
    {
      "text": "Experience the perfect team work and friendship",
      "image": "assets/images/image4.png"
    },
    {
      "text": "We Wel Come you all to the place of Learn and Joy",
      "image": "assets/images/image5.png"
    }
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                    width: double.infinity,
                    child: PageView.builder(
                      itemCount: introPageView.length,
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemBuilder: (context, index) => IntroView(
                          imageLocation: "${introPageView[index]["image"]}",
                          text: "${introPageView[index]["text"]}"),
                    ))),
            Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            introPageView.length,
                            (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: 12,
                                  width: index == currentPage ? 20 : 12,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: index == currentPage
                                        ? oSecondaryColor
                                        : Colors.purple.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                )),
                      ),
                      if(currentPage==4)Padding(
                        padding: const EdgeInsets.symmetric(vertical: 80),
                        child: DefaultButton(
                            text: "Continue",
                            press: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignInScreen()));
                            }),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class IntroView extends StatelessWidget {
  const IntroView({
    super.key,
    required this.imageLocation,
    required this.text,
  });

  final String imageLocation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 370,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 25,
          ),
          child: Image(
            image: AssetImage(imageLocation),
            fit: BoxFit.fill,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: oSecondaryColor,
              wordSpacing: 5,
              letterSpacing: 1,
              fontFamily: "Lobster-Regular"),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
