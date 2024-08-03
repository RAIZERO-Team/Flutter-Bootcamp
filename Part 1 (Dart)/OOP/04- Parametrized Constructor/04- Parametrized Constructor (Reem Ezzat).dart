// Author: Reem Ezzat

//task4
void main() {
  Student student = Student('Ali', 15);
  print('Student name: ${student.name} \nStudent Age: ${student.age}');
}

class Student {
  String? name;
  int? age;
  Student(this.name, this.age);
}
