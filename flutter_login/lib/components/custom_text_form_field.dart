import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: small_gap,
        ),
        TextFormField(
          // ! : null이 절대 아니다라고 컴파일러에게 알려주는 것
          validator: (value) =>
              value!.isEmpty ? "Please enter some text" : null,
          obscureText: text == "Password"
              ? true
              : false, //해당 TextFormField가 Password면 *** 처리
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              // 기본 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // 에러가 발생 후 손가락을 터치했을 때 디자인
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
