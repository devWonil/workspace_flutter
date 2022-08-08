import 'package:carrot_market_ui_1/models/icon_menu.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/card_icon_menu.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/profile_item.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import 'components/my_carrot_header.dart';

class MyCarrotScreen2 extends StatelessWidget {
  const MyCarrotScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: const Icon(Icons.settings)),
        ],
        bottom: const PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
