import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ex1/size.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return SizedBox();
  }

  Widget _buildBannerCaption() {
    return SizedBox();
  }
}
