// Author: Ahmed Badawi

void main(){
  // ignore: unused_local_variable
  MacBook macBook = MacBook();
}

class Laptop {
  Laptop() {
    print("Laptop Constructor");
  }
}

class MacBook extends Laptop {
  MacBook() {
    print("MacBook Constructor");
  }
}