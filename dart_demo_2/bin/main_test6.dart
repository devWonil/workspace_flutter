import 'main_test5.dart';

void main(List<String> args) {
  var flyByObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // java 컬렉션 프레임워크 사용시
  // map, filter

  flyByObjects.where((name) => name.contains('u')).forEach(print);

  print("3초 뒤 비동기 함수가 실행됩니다");
  printWithDelay2("비동기함수입니다");
}

// Enums
enum plannetType { terrestial, gas, ice }

// 상속
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

const oneSecond = Duration(seconds: 3);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) => print(message));
}
