// Author: Reem Ezzat

//task 18   (updated)
void main() {
  var b = Bottle();
  b.open();
}

class Bottle {
  open() {}
  factory Bottle() {
    return CokeBottle();
  }
}

class CokeBottle implements Bottle {
  @override
  open() {
    print('Coke Bottle is opened');
  }
}
