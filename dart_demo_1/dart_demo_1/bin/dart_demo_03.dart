void main(List<String> args) {
  // CheeseBurger cheeseBurger = CheeseBurger("치즈버거");
  // print(cheeseBurger.name);
  CheeseBurger cheeseBurger = CheeseBurger("치즈버거");
  print(cheeseBurger.name);
}

class Burger {
  final String? name;

  Burger(this.name) { // 부모 생성자
    // print("버거");
  }
}

class CheeseBurger extends Burger {
  CheeseBurger(String name) :super(name); // 자식 생성자
    // print("치즈버거");
    // super.name = name;
  
}

