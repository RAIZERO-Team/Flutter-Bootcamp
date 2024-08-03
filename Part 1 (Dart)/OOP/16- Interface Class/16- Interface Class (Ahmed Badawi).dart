// Author: Ahmed Badawi

void main() {
  MacBook macbook = new MacBook();

  macbook.turnOn();
  macbook.turnOff();
}

abstract class Laptop {
  void turnOn();
  void turnOff();
}

class MacBook extends Laptop {
  @override
  void turnOn() {
    print("Turning on");
  }

  @override
  void turnOff() {
    print("Turning off");
  }
}