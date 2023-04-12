import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No results to show",
        image: "assets/images/result.png",
        appBerTitle: "R E S U L T S");
  }
}
