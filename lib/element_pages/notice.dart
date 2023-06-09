import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';

class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No notices",
        image: "assets/images/notice.png",
        appBerTitle: "N O T I C E");
  }
}
