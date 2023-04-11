import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';
import 'package:orchid_app/constants.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No events scheduled",
        image: "assets/images/events.png",
        appBerTitle: "E V E N T S");
  }
}
