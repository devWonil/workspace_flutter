import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'statefull sample', home: DayAndNight());
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Today()),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = "";

  void changText() {
    setState(() {
      // 삼항 연산자 !
      changeValue == "낮" ? changeValue = "밤" : changeValue = "낮";
      // changeValue = (changeValue == "낮") ? "밤" : "낮";
      print("호출됨");
    });
  }

  @override
  void initState() {
    changeValue = "낮";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changText();
      },
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}
