import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ex1/components/home/home_header_appbar.dart';
import 'package:flutter_airbnb_ex1/components/home/home_header_form.dart';
import 'package:flutter_airbnb_ex1/size.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: header_height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HomeHeaderAppBar(),
            HomeHeaderForm(),
          ],
        ),
      ),
    );
  }
}
