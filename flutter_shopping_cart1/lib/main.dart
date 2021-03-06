import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart1/components/shoppingcart_detail.dart';
import 'package:flutter_shopping_cart1/components/shoppingcart_header.dart';
import 'package:flutter_shopping_cart1/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ShoppingCartHeader(), ShoppingCartDetail()],
      ),
    );
  }
}
