import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:intl/intl.dart';

import '../../../models/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: textTheme().bodyText1,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text('${product.address} • ${product.publishedAt}'),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            '${_numberFormat(product.price)} 원',
            style: textTheme().headline2,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: product.commentsCount > 0,
                child: _buildIcons(
                    product.commentsCount, CupertinoIcons.chat_bubble_2),
              ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(product.heartCount, CupertinoIcons.heart),
              )
            ],
          )
        ],
      ),
    );
  }

  String _numberFormat(int price) {
    final f = NumberFormat('#,###');
    return f.format(price);
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 14.0,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text('$count')
      ],
    );
  }
}
