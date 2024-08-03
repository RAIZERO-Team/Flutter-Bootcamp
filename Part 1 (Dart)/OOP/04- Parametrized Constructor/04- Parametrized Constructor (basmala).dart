// Author: basmala mohamed
void main() {
  Student student1 = Student();
  student1.displayInfo();

  Student student2 = Student('Basmala Mohamed', 21);
  student2.displayInfo();
}

class Student {
  String name;
  int age;

  Student([this.name = 'Reem Ezzat', this.age = 20]);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}