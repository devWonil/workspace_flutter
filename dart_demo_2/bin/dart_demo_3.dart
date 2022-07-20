import 'dart_demo_2.dart';

void main(List<String> args) {
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
  List<String> tagsList = image['tags'] as List<String>; //캐스팅
  print("----------");
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);
  print("------------");

  try {
    print(tagsList[2]);
  } catch (e) {
    print("예외발생");
  }

  description = 'Feijoada!';
  print(description);
}

late String description;
