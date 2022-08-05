import 'package:carrot_market_ui_1/screens/my_carrot/components/profile_item.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("나의 당근"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.gear_alt_fill)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: Column(
        children: [
          ProfileItem(),
          OutlinedButton(
            onPressed: () {},
            child: Text("프로필기 보기"),
          ),
        ],
      ),
    );
  }
}
