void main(List<String> args) {
  BMW bmw = new BMW(new Engine(), new Wheel());
  print(bmw.engine.power);
  print(bmw.wheel);
}

class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class Engine {
  int power = 5000;
}

// class BMW with Engine, Wheel { // Mixin
//   // Engine? engine;
//   // Wheel? wheel;
// }

class BMW { // Mixin
  Engine? engine;
  Wheel wheel;

  BMW(this.engine, this.wheel);
  // Wheel? wheel;
}