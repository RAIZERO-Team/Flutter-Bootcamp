// Author: basmala mohamed
void main() {
  const basmala = Customer('Basmala Mohamed', 21, '0100000000');
  basmala.displayInfo();
}

class Customer {
  final String name;
  final int age;
  final String phone;

  const Customer(this.name, this.age, this.phone);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Phone: $phone');
  }
}