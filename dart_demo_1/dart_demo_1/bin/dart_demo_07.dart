import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Map<String, dynamic> user = {
    "id" : 10,
    "username" : "cos"
  };

  // Map key 를 찾을 때 [] 대괄호를 사용한다
  print(user["id"]);
  print(user["username"]);
  print(user["age"]);
}

