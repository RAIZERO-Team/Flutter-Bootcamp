// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  List<int> newList = [];
  int first_index = 0;
  int last_index = n - 1;
  //taking input
  for (int i = 0; i < n; i++) {
    int? num = int.parse(stdin.readLineSync()!);

    list.add(num);
  }
  //the process
  for (int i = 0; i < list.length; i++) {
    if (first_index > last_index || last_index < 0) {
      break;
    }
    if (i % 2 == 0) {
      newList.add(list[first_index]);
      first_index++;
    } else if (i % 2 != 0) {
      newList.add(list[last_index]);
      last_index--;
    }
  }
  //printing output
  print(newList.join(' '));
}
