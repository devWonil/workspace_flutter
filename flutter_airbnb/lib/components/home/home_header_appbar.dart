import 'package:flutter/material.dart';

import '../../size.dart';
import '../../styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(), // 중간에 남은 공간 다 차지해라
          _buildAppBarMenu()
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "airbnb",
          style: h5(mColor: Colors.white),
        )
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text(
          "회원가입",
          style: subtitle1(mColor: Colors.white),
        ),
        SizedBox(
          width: gap_m,
        ),
        Text(
          "로그인",
          style: subtitle1(mColor: Colors.white),
        ),
      ],
    );
  }
}
