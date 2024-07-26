// Author: Ahmed Badawi

class Student {
  final String name;
  final int age;
  final String grade;

  const Student({required this.name,required this.age,required this.grade});

  void displayInfo(){
    print("Student Name: $name");
    print("Student Age: $age");
    print("Student Grade: $grade");
  }
}

void main(){
  Student std1 = Student(name: "Badawi",age: 20,grade: "B+");
  std1.displayInfo();
}