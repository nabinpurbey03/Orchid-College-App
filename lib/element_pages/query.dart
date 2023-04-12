import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';

class Query extends StatelessWidget {
  const Query({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "Your query will be taken very soon",
        image: "assets/images/query.png",
        appBerTitle: "Q U E R Y");
  }
}
