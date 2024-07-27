// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<String> l = [];
  int counter = 0;
  for (int i = 0; i < n; i++) {
    String? magnet = stdin.readLineSync()!;

    l.add(magnet);
    if (i == 0) {
      counter++;
    } else {
      if ((l[i])[0] == (l[i - 1])[1]) {
        counter++;
      }
    }
  }
  print(counter);
}
