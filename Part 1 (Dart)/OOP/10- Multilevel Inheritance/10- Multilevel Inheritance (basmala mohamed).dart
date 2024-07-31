// Author: basmala mohamed
void main() {
  Specialist specialist = Specialist('Dr.Mostafa', 32, ['Master', 'PhD', 'MD'], 'Hospital', 'Micrographic Surgery');
  specialist.display();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Doctor extends Person {
  List<String> listOfDegrees;
  String hospitalName;

  Doctor(super.name, super.age, this.listOfDegrees, this.hospitalName);
}

class Specialist extends Doctor {
  String specialization;

  Specialist(super.name, super.age, super.listOfDegrees, super.hospitalName, this.specialization);

  void display() {
    print('Name: $name');
    print('Age: $age');
    print('Degrees: ${listOfDegrees.join(', ')}');
    print('Hospital: $hospitalName');
    print('Specialization: $specialization');
  }
}