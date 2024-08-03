// Author: Reem Ezzat

//task10 (updated)
void main() {
  Doctor doctor = Doctor(
      name: 'Ramy',
      age: 37,
      listOfDegrees: ['MD', 'DO'],
      hospitalName: 'Giza Hospital');
  Specialist specialist = Specialist(
      name: 'Eyad',
      age: 32,
      listOfDegrees: ['Master of Surgery'],
      hospitalName: 'Tanta Hospital',
      specialization: 'surgery');
  doctor.Display();
  specialist.Display();
}

class Person {
  String? name;
  int? age;
  Person({required this.name, required this.age});
  void Display() {
    print('Person Data  \nName: ${this.name} \nAge: ${this.age} ');
  }
}

class Doctor extends Person {
  List<String> listOfDegrees = [];
  String? hospitalName;

  Doctor(
      {required super.name,
      required super.age,
      required this.listOfDegrees,
      required this.hospitalName});
  void Display() {
    print(
        'Person Data  \nName: ${this.name} \nAge: ${this.age} \nList of Degrses: ${this.listOfDegrees} \nHospital name: ${this.hospitalName}\n');
  }
}

class Specialist extends Doctor {
  String? specialization;

  Specialist(
      {required super.name,
      required super.age,
      required super.listOfDegrees,
      required super.hospitalName,
      required this.specialization});

  void Display() {
    print(
        'Person Data  \nName: ${this.name} \nAge: ${this.age} \nList of Degrses: ${this.listOfDegrees} \nHospital name: ${this.hospitalName} \nSpecialization: ${this.specialization}');
  }
}
