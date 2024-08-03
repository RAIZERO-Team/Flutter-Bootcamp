// Author: Reem Ezzat

//task14
void main() {
  Developer d = Developer(name: 'Reem Ezzat');
  Manager m = Manager(name: 'Marwa Mohamed');
  print('Name: ${d.name} \nPosition: ${d.position} \nSalary: ${d.Salary()} \n');
  print('Name: ${m.name} \nPosition: ${m.position} \nSalary: ${m.Salary()}');
}

class Employee {
  String? name;
  String? position;
  double? salary = 3000;
  Employee({this.position, this.salary, required this.name});

  double Salary() {
    return salary!;
  }
}

class Manager extends Employee {
  Manager({super.position, super.salary, required super.name}) {
    this.position = 'Manager';
    this.salary = 7000;
  }
  @override
  double Salary() {
    return salary!;
  }
}

class Developer extends Employee {
  Developer({super.position, super.salary, required super.name}) {
    this.position = 'Developer';
    this.salary = 8500;
  }
  @override
  double Salary() {
    return salary!;
  }
}
