// Author: Reem Ezzat

//task3
void main() {
  Person p1 = Person();
  p1.name = 'Reem';
  print('name: ${p1.name}');
  print('Planet: ${p1.planet}');
}

class Person {
  String? name;
  String? planet;
  Person() {
    this.planet = 'Earth';
  }
}
