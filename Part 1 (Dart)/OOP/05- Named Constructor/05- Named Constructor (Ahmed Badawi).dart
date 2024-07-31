// Author: Ahmed Badawi

void main(){
  Car car1 = Car(name: "BMW",color: "Black",price: 25000);

  car1.displayDetails();

  Car car2 = Car.carConstructor("Toyota", "Red");

  car2.displayDetails();
}

class Car {
  String? name;
  String? color;
  int price = 0;

  Car({String? name, String? color, int? price}){
    this.name = name;
    this.color = color;
    this.price = price!;
  }

  Car.carConstructor(String name, String? color){
    this.name = name;
    this.color = color;
  }

  void displayDetails(){
    print("The Car Name: $name");
    print("The Car Color: $color");
    print("The Car Price: $price");
    print("**" * 10);
  }
}