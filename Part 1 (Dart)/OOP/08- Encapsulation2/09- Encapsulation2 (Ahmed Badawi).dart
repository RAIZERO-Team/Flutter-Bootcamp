// Author: Ahmed Badawi

void main(){
  Vehicle vehicle = new Vehicle();

  vehicle.setModel = "BMW";

  vehicle.setYear = "2024";

  print(vehicle.getModel);
  print(vehicle.getYear);
  print("**" * 10);
}

class Vehicle {
  String _model;
  String _year;

  Vehicle() : _model = "" , _year = "";

  get getModel => _model;

  get getYear => _year;

  set setModel(String model) => _model = model;

  set setYear(String year) => _year = year;
}