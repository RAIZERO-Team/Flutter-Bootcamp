// Author: basmala mohamed
import 'dart:io';

void main() {
  String word = stdin.readLineSync()!;
  int upperCase = 0;
  int lowerCase = 0;

  for (int i = 0; i < word.length; i++) {
    if (word[i].toUpperCase() == word[i]) {
      upperCase++;
    } else {
      lowerCase++;
    }
  }

  if (upperCase > lowerCase) {
    print(word.toUpperCase());
  } else {
    print(word.toLowerCase());
  }
}