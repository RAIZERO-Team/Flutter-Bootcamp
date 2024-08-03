// Author: Reem Ezzat

//task5
void main() {
  Car car1 = Car(name: 'Kia', color: 'Gray', price: 166.0000);
  Car car2 = Car.Named(name: 'BMW', color: 'Black');
  car1.display();
  car2.display();
}

class Car {
  String? name;
  String? color;
  double? price;
  Car({required this.name, required this.color, required this.price});

  Car.Named({required this.name, required this.color});
  void display() {
    print('Car Data \n name: $name \n color: $color \n price: $price');
  }
}
