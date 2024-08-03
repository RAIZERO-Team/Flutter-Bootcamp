// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? A = int.parse(stdin.readLineSync()!);
  int? B = int.parse(stdin.readLineSync()!);
  int sub = A - B;
  if (sub >= 0) {
    print(sub);
  } else {
    sub = 0;
    print(sub);
  }
}
