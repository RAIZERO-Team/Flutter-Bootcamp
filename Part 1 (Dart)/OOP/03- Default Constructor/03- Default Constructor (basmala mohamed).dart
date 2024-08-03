// Author: basmala mohamed
void main() {
  Person person = Person();
  person.name = 'Basmala';
  person.displayInfo();
}

class Person {
  String? name;
  String planet = 'Earth';

  void displayInfo() {
    print('Name: $name');
    print('Planet: $planet');
  }
}