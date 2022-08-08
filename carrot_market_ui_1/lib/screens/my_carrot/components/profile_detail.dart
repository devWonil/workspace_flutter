import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "developer",
          style: textTheme().headline2,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text("좌동 #00912")
      ],
    );
  }
}
