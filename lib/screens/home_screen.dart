import 'package:flutter/material.dart';
import 'package:orchid_app/components/element_box.dart';
import 'package:orchid_app/constants.dart';
import 'package:orchid_app/element_pages/activities.dart';
import 'package:orchid_app/element_pages/events.dart';
import 'package:orchid_app/element_pages/group_discussion.dart';
import 'package:orchid_app/element_pages/notice.dart';
import 'package:orchid_app/element_pages/query.dart';
import 'package:orchid_app/element_pages/results.dart';
import 'package:orchid_app/element_pages/tests.dart';
import 'package:orchid_app/element_pages/todo.dart';
import '../components/student_avatar.dart';
import '../element_pages/notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> elementBody = [
    const Notes(),
    const Todo(),
    const Events(),
    const Notice(),
    const GroupDiscussion(),
    const Results(),
    const Query(),
    const Tests(),
    const Activities()
  ];

  List<Map<String, String>> elementBox = [
    {"image": "assets/images/notes.jpg", "text": "Notes"},
    {"image": "assets/images/toDo.png", "text": "Todo"},
    {"image": "assets/images/events.png", "text": "Events"},
    {"image": "assets/images/notice.png", "text": "Notice"},
    {"image": "assets/images/groupDiscussion.png", "text": "Gro Dis"},
    {"image": "assets/images/result.png", "text": "Results"},
    {"image": "assets/images/query.png", "text": "Query"},
    {"image": "assets/images/tests.png", "text": "Tests"},
    {"image": "assets/images/activities.png", "text": "Activities"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              expandedHeight: 320,
              pinned: true,
              floating: true,
              backgroundColor: oSecondaryColor,
              title: const Text("H O M E",style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36),),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset("assets/images/orchid_logo.png"),
              ),
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(160), child: StudentInfo())),
          SliverGrid.builder(
              itemCount: elementBox.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 25, crossAxisSpacing: 10),
              itemBuilder: (context, index) => Elements(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => elementBody[index]));
                  },
                  text: "${elementBox[index]["text"]}",
                  imageLocation: "${elementBox[index]["image"]}"))
        ],
      ),
    );
  }
}
