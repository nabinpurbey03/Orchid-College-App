import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';


class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No extra activities for now",
        image: "assets/images/activities.png",
        appBerTitle: "A C T I V I T I E S");
  }
}
