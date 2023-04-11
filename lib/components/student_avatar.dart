import 'package:flutter/material.dart';

class StudentInfo extends StatelessWidget {
  const StudentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/nabinPurbey.png"),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Nabin Purbey",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "B I M",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
