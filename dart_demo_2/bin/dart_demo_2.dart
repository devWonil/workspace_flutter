import 'dart:math';

import 'package:dart_demo_2/dart_demo_2.dart' as dart_demo_2;

/*
변수 : 타입 추론가능, 명시적 타입
*/
void main() {
  var name = "Voyager I";
  var year = 1977;
  var antennaDiameter = 3.7;
  var flyByObjects = ['Jupiter', 'Saturn', 'Uranus'];
  var image = <String, dynamic>{
    "tags": ['saturn', 'abc'],
    'url': '//path/to/saturn.jpg'
  };

  print(image);
  print(image['tags'].runtimeType);
  List<String> tagsList = image['tags'] as List<String>; // 캐스팅
  print("----------------");
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);
  print("----------------");
  try {
    print(tagsList[2]);
  } catch (e) {
    print("예외발생");
  }

  // try {
  //   print(tagsList[2]);
  // } on Exception {
  //   print("예외발생2");
  // }

  print("1111111111111111");
  // Map 타입은 {} 중괄호를 사용한다. - {key : value , key : value}
  // Map key value pair 방식이다.
  // List 타입은 [] 대괄호를 사용한다.

  // Late variables
  // Dart 2.12 이후에 추가된 키워드입니다.

  description = 'Feijoada!';
  print(description);
}

// 선언 후 초기화된 null이 아닌 변수를 선언합니다. 변수를 느리게 초기화합니다.
late String description;
