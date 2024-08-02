// Author: basmala mohamed
void main() {
  var car = Car();
  car.electricVariant();
  car.petrolVariant();
}

mixin ElectricVariant {
  void electricVariant() {
    print('Electric Variant Car');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('Petrol Variant Car');
  }
}

class Car with ElectricVariant, PetrolVariant {
  Car() {
    print('There are two types of cars:');
  }
}