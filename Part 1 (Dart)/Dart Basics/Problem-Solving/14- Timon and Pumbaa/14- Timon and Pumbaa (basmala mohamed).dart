// Author: basmala mohamed
import 'dart:io';
void main() {
  int? a = int.parse(stdin.readLineSync()!);
  int? b = int.parse(stdin.readLineSync()!);
  int difference = a - b;

  if (a >= b) {
    print(difference);
  } else if (a < b) {
    print('0');
  }
}