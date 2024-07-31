// Author: Ahmed Badawi

void main() {
  const Customer customer = Customer(name: "Badawi", age: 21, phone: "01018562905");

  customer.printData();
}

class Customer {
  final String? name;
  final int? age;
  final String? phone;

  const Customer({required this.name,required this.age,required this.phone});

  void printData(){
    print("Customer Name: $name");
    print("Customer Age: $age");
    print("Customer Phone Number: $phone");
    print("**" * 10);
  }
}