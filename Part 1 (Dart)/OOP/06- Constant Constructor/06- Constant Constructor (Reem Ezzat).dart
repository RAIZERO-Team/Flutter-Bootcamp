// Author: Reem Ezzat

//task6
void main() {
  Customer c = Customer('Sara', 32, '01127849291');
  print(
      'customer name: ${c.name} \ncustomer age: ${c.age} \ncustomer phone: ${c.phone}');
}

class Customer {
  final String? name;
  final int? age;
  final String? phone;

  const Customer(this.name, this.age, this.phone);
}
