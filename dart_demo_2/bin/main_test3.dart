import 'main_test2.dart';

void main(List<String> args) {
  var flyByObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  // java 컬렉션 프레임워크 사용시
  // map, filter

  flyByObjects.where((name) => name.contains('turn')).forEach(print);
  // 익명함수를 인수로 전달할 때 유용한 방법이다.

  print("5초 뒤 비동기 함수가 실행됩니다");
  printWithDelay2("비동기 함수입니다");
}

// Enums
enum planetType { terrestial, gas, ice }

// 상속
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

// 비동기 Async : 콜백 지옥을 피하고 async 및 await를 사용할 수 있다
// 훨씬 코드를 쉽게 만들 수 있다

const oneSecond = Duration(seconds: 5);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}
