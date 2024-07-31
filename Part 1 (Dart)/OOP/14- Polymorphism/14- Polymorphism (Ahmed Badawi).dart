// Author: Ahmed Badawi

void main(){
  Employee employee = Employee();
  employee.Salary();

  Manager manager = Manager();
  manager.Salary();

  Developer developer = Developer();
  developer.Salary();
}

class Employee {
  Salary(){
    print("Employee class");
  }
}

class Manager extends Employee {
  @override
  Salary() {
    print("Manager class");
  }
}

class Developer extends Employee {
  @override
  Salary() {
    print("Developer class");
  }
}