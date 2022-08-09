import 'package:flutter/material.dart';

class HomeScreen4 extends StatefulWidget {
  const HomeScreen4({Key? key}) : super(key: key);

  @override
  State<HomeScreen4> createState() => _HomeScreen4State();
}

class _HomeScreen4State extends State<HomeScreen4> {
  double opacityValue = 1.0;
  double _width = 100;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animation ex2'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              flag != flag;
              _width = flag ? 100 : 50;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceIn,
            height: 30,
            width: _width,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
