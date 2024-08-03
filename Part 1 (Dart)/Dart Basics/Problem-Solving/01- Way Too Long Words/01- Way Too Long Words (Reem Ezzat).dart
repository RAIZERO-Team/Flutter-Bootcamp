// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<String> l = [];
  for (int i = 0; i < n; i++) {
    String? word = stdin.readLineSync()!;

    if (word.length > 10) {
      l.add(word[0] +
          '' +
          (word.length - 2).toString() +
          '' +
          word[word.length - 1]);
    } else {
      l.add(word);
    }
  }
  for (int i = 0; i < l.length; i++) {
    print(l[i]);
  }
}
