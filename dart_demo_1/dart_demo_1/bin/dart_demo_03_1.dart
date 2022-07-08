void main(List<String> args) {
  CheeseBurger cheeseBurger = CheeseBurger("치즈버거", 3000);
  print(cheeseBurger.name);
  print(cheeseBurger.price);
}

class Burger {
  final String? name;
  final int? price;
  Burger(this.name, this.price){

  }
}

class CheeseBurger extends Burger {
  CheeseBurger(String name, int price) :super(name, price);
}