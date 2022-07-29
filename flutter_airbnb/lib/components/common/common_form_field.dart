import 'package:flutter/material.dart';

import '../../styles.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField(
      {Key? key, required this.prefixText, required this.hintText})
      : super(key: key);

  final prefixText;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
        // Positioned 를 사용한 이유는 TextFormField 공간에 글자를 삽입하기 위해서
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            ))
      ],
    );
  }
}
