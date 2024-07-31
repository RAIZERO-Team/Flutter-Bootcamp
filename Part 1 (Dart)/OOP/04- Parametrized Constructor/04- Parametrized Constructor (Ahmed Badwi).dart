// Author: Ahmed Badawi

void main(){
  Student student = Student(name: "Badawi",age: 20);

  student.printData();
}

class Student {
  String? name;
  int? age;

  Student({String? name, int? age}){
    this.name = name;
    this.age = age;
  }

  void printData(){
    print("Student Name: $name");
    print("Student Age: $age");
    print("**" * 10);
  }
}