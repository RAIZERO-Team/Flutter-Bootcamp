// Author: Ahmed Badawi

/*
THERE IS CLASS NAMED PERSON WITH TWO PROPERTIES
NAME AND AGE.
THERE IS SUB CLASS NAMED DOCTOR WITH  PROPERTIES 
LISTOFDEGREES AND HOSPITALNAME.

THERE IS ANOTHER SUBCLASS NAMED SPECIALIST WITH PROPERTY
SPECIALIZATION.

THE SUB CLASS HAS A METHOD DISPLAY TO DISPLAY THE VALUES 
OF THE PROPERTIES
*/

void main(){
  Specialist specialist = Specialist();

  specialist.setName = "Badawi";
  specialist.setAge = 20;
  specialist.setOredrs = ["order1", "order2", "order3", "order4", "order5"];
  specialist.setSpecialist = "Heart";

  specialist.displayData();
}

class Person {
  String? _name;
  int? _age;

  Person() : _name = "", _age = 0;
}

class Doctor extends Person {
  List<String>? _orders;
  String? _hospitalName;

  Doctor() : super();
}

class Specialist extends Doctor {
  Specialist() : super();

  String? _specialist;

  String get getName => _name!;

  int get getAge => _age!;

  List get getOrders => _orders!;

  String get getHospitalName => _hospitalName!;

  String get getSpecialist => _specialist!;

  void set setName(String name) => this._name = name;

  void set setAge(int age) => this._age = age;

  void set setOredrs(List<String> orders) => this._orders = orders;

  void set setHospitalName(String hospitalName) => this._hospitalName = hospitalName;

  void set setSpecialist(String specialist) => this._specialist = specialist;

  displayData(){
    print("The Doctor Name: $_name");
    print("The Doctor Age: $_age");
    print("The Doctor Specialist: $_specialist");
    print("The List of Orders: $_orders");
    print("The Doctor Hospital Name: $_hospitalName");
    print("**" * 10);
  }
}

