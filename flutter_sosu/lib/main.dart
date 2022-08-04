import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _inputNumber = TextEditingController();

  static String determine(int _inputNumber) {
    if (_inputNumber == 0 || _inputNumber == 1) {
      return "소수가 아닙니다";
    }
    for (int i = 2; i < _inputNumber; i++) {
      if (_inputNumber % i == 0) {
        return "소수가 아닙니다";
      }
    }
    return "소수입니다";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("소수 판별기"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(labelText: "판별할 수를 입력하세요"),
            controller: _inputNumber,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9]')),
            ],
            onChanged: (context) {
              print(context);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    content: Text(_inputNumber.text +
                        "은(는) " +
                        determine(int.parse(_inputNumber.text))));
              });
        },
      ),
    );
  }
}
