// Author: basmala mohamed
void main() {
  MacBook macBook = MacBook('Apple', 100000, 'grey');
  macBook.display();
}

class Laptop {
  String brand;
  double price;

  Laptop(this.brand, this.price);

  void display() {
    print('Brand: $brand');
    print('Price: $price');
  }
}

class MacBook extends Laptop {
  String color;

  MacBook(super.brand, super.price, this.color);

  @override
  void display() {
    super.display();
    print('Color: $color');
  }
}