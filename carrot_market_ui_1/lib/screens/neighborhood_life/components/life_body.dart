import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class LifeBody extends StatelessWidget {
  const LifeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '우리동네질문                                                                     3시간전',
              ),
            ],
          ),
        ),
        _buildProfileRow(),
        Container(
            width: 350,
            height: 80,
            child: Text(
              '예민한 개도 미용할 수 있는 곳이나 동물병원 있을까요? 내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요 ㅜㅜ.',
              style: textTheme().bodyText1,
            )),
        Container(
          child: Image.network(
            'https://placeimg.com/200/100/people',
            fit: BoxFit.cover,
            width: 360,
            height: 180,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        PreferredSize(
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
          preferredSize: Size.fromHeight(0.5),
        ),
        _buildLikeAndReply(),
        PreferredSize(
            child: Divider(
              thickness: 12,
              height: 0.5,
              color: Colors.grey[80],
            ),
            preferredSize: Size.fromHeight(0.5))
      ],
    );
  }

  Widget _buildProfileRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://placeimg.com/200/100/people',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Row(
            children: [
              Text(
                '헬로바비',
                style: textTheme().headline2,
              ),
              SizedBox(
                width: 5,
              ),
              Text("좌동 인증3회")
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLikeAndReply() {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.smiley)),
        Text("공감하기"),
        SizedBox(
          width: 15,
        ),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
        Text("댓글쓰기 11")
      ],
    );
  }
}
