// Author: Ahmed Badawi

void main(){
  Tesla model1 = Tesla();
  model1.setCarName = "Model1";
  model1.setCarPrice = "1500000";
  model1.displayCarData();

  Tesla model2 = Tesla();
  model2.setCarName = "Model2";
  model2.setCarPrice = "120000";
  model2.displayCarData();
}

class Car {
  String? _name;
  String? _price;

  Car() : _name = "" , _price = "";
}

class Tesla extends Car {
  Tesla() : super();

  get getCarName => _name;

  get getCarPrice => _price;

  set setCarName(String name) => _name = name;

  set setCarPrice(String price) => _price = price;

  displayCarData(){
    print("The Car Name: $_name");
    print("The Car Price: $_price");
    print("**" * 10);
  }
}