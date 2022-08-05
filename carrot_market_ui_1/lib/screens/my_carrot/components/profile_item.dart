import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/profile_detail.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/actor.png'),
          ),
          SizedBox(
            width: 10,
          ),
          ProfileDetail()
        ],
      ),
    );
  }
}

/*
@override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 6.0,
          ),
          ProductDetail(product: product)
        ],
      ),
    );
  }
 */