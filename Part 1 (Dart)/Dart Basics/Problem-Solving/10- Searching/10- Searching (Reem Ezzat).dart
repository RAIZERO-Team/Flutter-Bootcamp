// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  for (int i = 0; i < n; i++) {
    int? numbers = int.parse(stdin.readLineSync()!);
    list.add(numbers);
  }
  int? key = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    if (list[i] == key) {
      print(i);
      break;
    } else if (i == n - 1 && list[i] != key) {
      print(-1);
    }
  }
}
