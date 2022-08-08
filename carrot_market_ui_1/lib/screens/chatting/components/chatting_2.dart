import 'package:carrot_market_ui_1/theme.dart';
import 'package:flutter/material.dart';

class Chatting2 extends StatelessWidget {
  const Chatting2({Key? key}) : super(key: key);

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
                    'Flutter ',
                    style: textTheme().headline1,
                  ),
                  Text('중동 • 2일전')
                ],
              ),
              Text('안녕하세요 지금 다 예약 상태 인가요?')
            ],
          ),
          SizedBox(
            width: 20,
          ),
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
          )
        ],
      ),
    );
  }
}
