import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  double opacityValue = 1.0;
  double _width = 100;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animation ex'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              flag = !flag;
              _width = flag ? 100 : 50;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            width: _width,
            height: 50,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
