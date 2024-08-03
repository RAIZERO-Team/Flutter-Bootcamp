// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? costOfFirstBanana = int.parse(stdin.readLineSync()!);
  int? initialNumOfDollars = int.parse(stdin.readLineSync()!);
  int? numOfBananas = int.parse(stdin.readLineSync()!);
  int price = 0;
  for (int i = 1; i <= numOfBananas; i++) {
    int bananaPrice = i * costOfFirstBanana;
    price = price + bananaPrice;
  }
  if (price > initialNumOfDollars) {
    print(price - initialNumOfDollars);
  } else {
    print("0");
  }
}
