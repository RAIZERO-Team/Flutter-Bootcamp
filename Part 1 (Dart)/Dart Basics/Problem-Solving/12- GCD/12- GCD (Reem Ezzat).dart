// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? first_num = int.parse(stdin.readLineSync()!);
  int? second_num = int.parse(stdin.readLineSync()!);
  int minimum = 0;
  if (first_num < second_num) {
    minimum = first_num;
  } else {
    minimum = second_num;
  }
  for (int i = minimum; i > 0; i--) {
    if (first_num % i == 0 && second_num % i == 0) {
      print(i);
      break;
    }
  }
}
