// Author: basmala mohamed
void main() {
  Tesla tesla = Tesla('Tesla', 10000000);
  tesla.display();
}

class Car {
  String name;
  double price;

  Car(this.name, this.price);
}

class Tesla extends Car {
  Tesla(super.name, super.price);

  void display() {
    print('Name: $name');
    print('Price: $price');
  }
}