// 람다 표현식 : 단축형

// DateTime? nullable 형식이다
// nullable 형식이 있는 변수는 초기화 되지 않은 변수이고 초기 값은 null입니다
// 모든 변수에는 nullable 유형이 있습니다. 심지어 숫자도 nullable 입니다.
// dart에서 변수로 지정할 수 있는 모든 것들은 객체이기 때문이다.
void main(List<String> args) {}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // get
  int? get launchYear => launchDate?.year;
  // 기본 생성자
  Spacecraft(this.name, this.launchDate) {}

  // 이름이 있는 생성자
  Spacecraft.unlaunched(String name) : this(name, null);
}
