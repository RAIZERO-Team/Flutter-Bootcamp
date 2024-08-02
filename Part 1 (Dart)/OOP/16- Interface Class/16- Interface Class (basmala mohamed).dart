// Author: basmala mohamed
void main() {
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}

abstract class Laptop {
  void turnOn();
  void turnOff();
}

class MacBook implements Laptop {
  @override
  void turnOn() {
    print('My laptop is turned on');
  }

  @override
  void turnOff() {
    print('My laptop is turned off');
  }
}