// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? first_wieght = int.parse(stdin.readLineSync()!);
  int? second_wieght = int.parse(stdin.readLineSync()!);
  for (int num_of_years = 1; num_of_years < 10; num_of_years++) {
    if (first_wieght != null && second_wieght != null) {
      first_wieght = first_wieght * 3;
      second_wieght = second_wieght * 2;
      if (first_wieght > second_wieght) {
        print(num_of_years);
        break;
      }
    }
  }
}
