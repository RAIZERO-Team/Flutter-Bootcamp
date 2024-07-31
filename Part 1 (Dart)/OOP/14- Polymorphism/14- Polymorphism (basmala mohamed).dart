// Author: basmala mohamed
void main() {
  Employee manager = Manager();
  Employee developer = Developer();

  print('Manager: ${manager.salary()}');
  print('Developer: ${developer.salary()}');
}

class Employee {
  double salary() {
    return salary();
  }
}

class Manager extends Employee {
  @override
  double salary() {
    return 6000;
  }
}

class Developer extends Employee {
  @override
  double salary() {
    return 4500;
  }
}