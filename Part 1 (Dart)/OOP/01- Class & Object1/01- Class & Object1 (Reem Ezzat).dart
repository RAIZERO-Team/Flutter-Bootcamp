// Author: Reem Ezzat

//task1
void main() {
  Student student1 = Student('Reem', 20, 86.4);
  student1.DisplayInfo();
}

class Student {
  String? Name;
  int? Age;
  double? Grade;
  Student(this.Name, this.Age, this.Grade);

  void DisplayInfo() {
    print('Name : $Name \nAge: $Age \nGrade: $Grade');
  }
}
