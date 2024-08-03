// Author: Reem Ezzat

//task9 (updated)
void main() {
  Tesla teslaCar1 = Tesla();
  teslaCar1.name = 'Honda 2017';
  teslaCar1.price = 1804760;
  teslaCar1.Display();
}

class Car {
  String? name;
  double? price;
  //Car(this.name, this.price);
}

class Tesla extends Car {
//  Tesla(super.name, super.price);

  void Display() {
    print('Car Data  \nname: ${this.name} \nprice: ${this.price}\$');
  }
}
