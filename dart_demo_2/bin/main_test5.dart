void main(List<String> args) {}

class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;
  // 기본 생성자
  Spacecraft(this.name, this.launchDate) {}

  // 이름이 있는 생성자
  Spacecraft.unlaunched(String name) : this(name, null);
}
