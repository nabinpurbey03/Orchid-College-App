import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';
import 'package:orchid_app/constants.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainBody(text: "No assignments to do", image: "assets/images/toDo.png ", appBerTitle: "T O D O");
  }
}
