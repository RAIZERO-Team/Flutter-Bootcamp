// Author: basmala mohamed
import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int steps;

  if (x % 5 == 0) {
    steps = x ~/ 5;
  } else {
    steps = x ~/ 5 + 1;
  }
  print(steps);
}