import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget {
  const LifeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://placeimg.com/200/100/people',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
            height: 20,
          ),
          Container(
            width: 300,
            height: 100,
            child: Text(
              '이웃과 함께 만나는 봄 간식 지도 마음까지 따듯해지는 봄 간식을 만나보세요.',
              style: textTheme().bodyText1,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
