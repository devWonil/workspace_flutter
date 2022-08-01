import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter rest api ex",
      theme: ThemeData(
        primaryColor: Colors.orange[100],
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
