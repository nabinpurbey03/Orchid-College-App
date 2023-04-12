import 'package:flutter/material.dart';
import 'package:orchid_app/components/main_element_body.dart';

class GroupDiscussion extends StatelessWidget {
  const GroupDiscussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainBody(
        text: "No group discussion",
        image: "assets/images/groupDiscussion.png",
        appBerTitle: "Group Discussion");
  }
}
