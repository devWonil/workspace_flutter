import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class Chatting1 extends StatelessWidget {
  const Chatting1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 65,
            height: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32.5),
              child: Image.network(
                'https://placeimg.com/200/100/people',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '당근이, ',
                    style: textTheme().headline1,
                  ),
                  Text('대부동 • 1일전')
                ],
              ),
              Text('developer 님, 근처에 다양한 물품들이 아주 많...')
            ],
          )
        ],
      ),
    );
  }
}
