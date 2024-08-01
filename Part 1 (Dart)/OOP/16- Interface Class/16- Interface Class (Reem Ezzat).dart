// Author: Reem Ezzat

//task16
void main() {
  MacBook mac_laptop = MacBook();
  mac_laptop.TurnOn();
  mac_laptop.TurnOff();
}

abstract class Laptop {
  TurnOn();
  TurnOff();
}

class MacBook implements Laptop {
  @override
  TurnOff() {
    print('Laptop is turned off');
  }

  @override
  TurnOn() {
    print('Laptop turned on');
  }
}
