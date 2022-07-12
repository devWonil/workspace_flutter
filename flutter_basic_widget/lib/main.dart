import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

// 기본 위젯
// TEXT
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _name = "홍길동"; // StatelessWidget에서는 변수사용시 final
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }
}

// class BasicContainer extends StatelessWidget {
//   const BasicContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class BasicGesture extends StatelessWidget {
  const BasicGesture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("눌러졋네요");
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}
