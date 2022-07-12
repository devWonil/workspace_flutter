// import 'package:flutter/material.dart';
// import 'package:flutter_recipe_1/pages/recipe_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: "PatuaOne"),
//       home: RecipePage(),
//     ); //MaterialApp
//   }
// }

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
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            MyPicture(),
            Row(
              children: [
                Text("Campground \n fdsfasdfgdsag"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyPicture extends StatelessWidget {
  const MyPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      "assets/images/articleelevenheader.jpeg",
    ));
  }
}
