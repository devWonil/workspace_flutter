import 'package:flutter/material.dart';
import 'package:flutter_ex_1/star.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Color color = Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("Welcome to Flutter"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text(
            'Kandersteg, Switzerland',
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      )),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Star(),
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  ],
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(
        icon,
        color: color,
      ),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);









/*
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
*/
