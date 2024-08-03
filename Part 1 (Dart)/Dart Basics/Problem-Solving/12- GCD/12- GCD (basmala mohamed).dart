// Author: basmala mohamed
import 'dart:io';
import 'dart:math';

void main() {
  int A = int.parse(stdin.readLineSync()!);
  int B = int.parse(stdin.readLineSync()!);
  int result = 1;

  for (int i = 1; i <= min(A, B) ; i++) {
    if (A % i == 0 && B % i == 0) {
      result = i;
    }
  }
  print(result);
}