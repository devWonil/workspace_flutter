import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '위젯연습',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}

class MyPicture extends StatelessWidget {
  const MyPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      "assets/images/burger.jpeg",
    ));
  }
}
