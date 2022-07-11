import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // color: Colors.amberAccent,
      home: StorePage(), 
    ); // MaterialApp
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Woman", style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("Kids", style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("Bag", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
            const SizedBox(height: 2,), // 공백
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover))
          ],
        ),
      ),
    );
  }
}
