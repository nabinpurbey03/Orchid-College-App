import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';
import 'package:orchid_app/constants.dart';

class Tests extends StatelessWidget {
  const Tests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No tests for now",
        image: "assets/images/tests.png",
        appBerTitle: "T E S T S");
  }
}
