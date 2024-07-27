// Author: Reem Ezzat

import 'dart:io';

void main() {
// ASCII code -> lowercase 97 -> 122
//                uppercase 65 -> 90
  String? s = stdin.readLineSync()!;
  List<int> word = s.codeUnits;
  int lowercase_counter = 0;
  int uppercase_counter = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] >= 97 && word[i] <= 122) {
      lowercase_counter++;
    } else {
      uppercase_counter++;
    }
  }
  if (lowercase_counter >= uppercase_counter) {
    s = s.toLowerCase();
  } else {
    s = s.toUpperCase();
  }
  print(s);
}
