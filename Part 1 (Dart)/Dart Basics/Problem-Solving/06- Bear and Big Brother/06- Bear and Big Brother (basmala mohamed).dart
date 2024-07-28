// Author: basmala mohamed
import 'dart:io';

void main() {
  int A = int.parse(stdin.readLineSync()!);
  int B = int.parse(stdin.readLineSync()!);
  int Y = 0;

  while (A <= B) {
    A *= 3;
    B *= 2;
    Y++;
  }
  print(Y);
}