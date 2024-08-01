// Author: Reem Ezzat

//task12 (updated)
void main() {
  MacBook macBook = MacBook(modelName: 'M2 MacBook Pro', price: 77700);
  macBook.printLabtopsetails();
}

class Laptop {
  String? brand;
  double? price;
  Laptop({this.brand, required this.price});
}

class MacBook extends Laptop {
  String? modelName;

  MacBook({super.brand, required this.modelName, required super.price}) {
    this.brand = 'Apple';
  }

  printLabtopsetails() {
    print(
        'Brand name: ${this.brand} \nModel Name: ${this.modelName} \nPrice: ${this.price} ');
  }
}
