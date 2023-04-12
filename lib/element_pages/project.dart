import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No Projects",
        image: "assets/images/project.png",
        appBerTitle: "N O T I C E");
  }
}
