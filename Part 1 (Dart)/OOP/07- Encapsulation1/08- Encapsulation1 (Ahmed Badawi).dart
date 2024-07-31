// Author: Ahmed Badawi

void main(){
  Student student = Student();

  student.setFirstName = "Ahmed";

  student.setLastName = "Badawi";

  student.age = 20;

  print(student.fullName);
  print(student.age);
  print("**" * 10);
}

class Student {
  String? _firstName;
  String? _lastName;
  int? _age;

  Student() : _firstName = "", _lastName = "", _age = 0;

  Student.firstName() : _firstName = "";
  Student.lastName() : _lastName = "";
  Student.age() : _age = 0;

  String get fullName => "$_firstName $_lastName";

  int get age => _age!;

  set setFirstName(String firstName) => this._firstName = firstName;

  set setLastName(String lastName) => this._lastName = lastName;

  set age(int age) => age > 0 ? this._age = age : throw("Age must be greater than zero");
}