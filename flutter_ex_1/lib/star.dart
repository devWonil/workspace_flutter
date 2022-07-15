import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  int num = 0;
  void increaseNumber() {
    setState(() {
      num++;
    });
  }

  @override
  void initState() {
    num = 40;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        increaseNumber();
      },
      child: Text(num.toString()),
    );
  }
}
