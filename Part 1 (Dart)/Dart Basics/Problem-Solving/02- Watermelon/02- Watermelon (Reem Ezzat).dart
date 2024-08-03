// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? watermelon = int.parse(stdin.readLineSync()!);
  if (watermelon == 1 || watermelon == 2 || watermelon % 2 != 0) {
    print('NO');
  } else {
    print('YES');
  }
}
