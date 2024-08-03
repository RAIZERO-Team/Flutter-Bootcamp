// Author: Reem Ezzat

//task7 (updated)
void main() {
  Student student1 = Student();
  student1.age = -4;
  student1._firstname = 'Reem';
  student1._lastname = 'Ezzat';
  print(
      ' Student Fullname: ${student1.fullname} \n Student Age: ${student1._age}');
}

class Student {
  String? _firstname;
  String? _lastname;
  int? _age;
  set firstname(String firstname) {
    this._firstname = firstname;
  }

  set lastname(String lastname) {
    this._lastname = lastname;
  }

  set age(int? age) {
    if (age! > 0) {
      this._age = age;
    } else {
      throw {"Error, invalid age"};
    }
  }

  String get fullname => '${this._firstname} ${this._lastname}';
  int? get age => this._age;
}
