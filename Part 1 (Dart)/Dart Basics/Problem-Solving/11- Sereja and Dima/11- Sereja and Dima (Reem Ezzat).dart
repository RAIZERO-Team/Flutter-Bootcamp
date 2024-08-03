// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  int seraja_sum = 0;
  int dima_sum = 0;
  int first_index = 0;
  int last_index = n - 1;
  List<int> list = [];
  for (int i = 0; i < n; i++) {
    int? number = int.parse(stdin.readLineSync()!);
    list.add(number);
  }
  for (int i = 0; i < n; i++) {
    if (last_index < 0 || first_index > n - 1) {
      break;
    }
    if ((i % 2 == 0 || i == 0) && list[last_index] >= list[first_index]) {
      seraja_sum = seraja_sum + list[last_index];
      last_index--;
    } else if ((i % 2 == 0 || i == 0) && list[first_index] > list[last_index]) {
      seraja_sum = seraja_sum + list[first_index];
      first_index++;
    } else {
      if (list[last_index] >= list[first_index]) {
        dima_sum = dima_sum + list[last_index];
        last_index--;
      } else {
        dima_sum = dima_sum + list[first_index];
        first_index++;
      }
    }
  }
  print('$seraja_sum $dima_sum');
}
