import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import 'components/chatting_1.dart';
import 'components/chatting_2.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("채팅"),
        bottom: const PreferredSize(
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: Colors.grey,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView(
        children: [
          Chatting1(),
          Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          Chatting2(),
        ],
      ),
    );
  }
}
