// Author: basmala mohamed
void main() {
  var student = Student('Basmala', 'Mohamed', 21);

  print('Full Name: ${student.fullName}');
  print('Age: ${student.age}');
}

class Student {
  String _firstName;
  String _lastName;
  int _age;

  Student(this._firstName, this._lastName, this._age);

  set firstName(String firstName) => _firstName = firstName;

  set lastName(String lastName) => _lastName = lastName;

  set age(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  String get fullName => '$_firstName $_lastName';

  int get age => _age;
}