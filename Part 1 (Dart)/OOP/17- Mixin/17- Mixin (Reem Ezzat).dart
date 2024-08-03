// Author: Reem Ezzat

//task17
void main() {
  Car hybridCar = Car();
  print('${hybridCar.HybridCar()}');
}

mixin ElectricVariant {
  String typeOfFuel = 'Elecrtricity';
  String electricVariant() {
    return typeOfFuel;
  }
}
mixin PetrolVariant {
  String TypeOfFuel = 'Pterol';
  String petrolVariant() {
    return TypeOfFuel;
  }
}

class Car with ElectricVariant, PetrolVariant {
  String HybridCar() {
    return ('Car uses Both ${super.electricVariant()} and ${super.petrolVariant()}');
  }
}
