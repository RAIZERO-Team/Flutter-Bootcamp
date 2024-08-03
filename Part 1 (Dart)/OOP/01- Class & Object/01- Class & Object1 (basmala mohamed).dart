// Author: basmala mohamed
void main() {
  Student basmala = Student();
  basmala.name = 'Basmala mohamed';
  basmala.age = 21;
  basmala.grade = 100;
  basmala.displayInfo();
}

class Student {
  String? name;
  int? age;
  int? grade;

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
  }
}

/*void main() {
  Student basmala = Student('Basmala Mohamed', 21, 100);
  basmala.displayInfo();
}

class Student {
  String? name;
  int? age;
  int? grade;

  Student(String name, int age, int grade) {
    this.name = name;
    this.age = age;
    this.grade = grade;
  }

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
  }
}*/