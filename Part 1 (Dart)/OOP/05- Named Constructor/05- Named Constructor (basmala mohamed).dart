// Author: basmala mohamed
void main() {
  Car car1 = Car('KIA', 'Black', 1000000);
  car1.display();

  Car car2 = Car.namedConstructor('Honda', 'White');
  car2.display();
}

class Car {
  String name;
  String color;
  double price;
  
  //Parameterized
  Car(this.name, this.color, this.price);
  
  //Default
  /*Car(String name, String color, double price) {
    this.name = name;
    this.color = color;
    this.price = price;
  }*/
  
  //Named
  Car.namedConstructor(this.name, this.color) : price = 0.0;

  void display() {
    print('Name: $name');
    print('Color: $color');
    print('Price: $price');
  }
}