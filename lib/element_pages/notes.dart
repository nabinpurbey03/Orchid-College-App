import 'package:flutter/material.dart';
import '../components/main_element_body.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
      appBerTitle: "N O T E S",
      image: "assets/images/notes.jpg",
      text: "Not notes found",
    );
  }
}


