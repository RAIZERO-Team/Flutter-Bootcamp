// Author: basmala mohamed
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int count = 0;

  for (int i = 0; i < n; i++) {
    List<String> inputs = stdin.readLineSync()!.split(' ');
    int petya = int.parse(inputs[0]);
    int vasya = int.parse(inputs[1]);
    int tonya = int.parse(inputs[2]);

    if ((petya == 1 && vasya == 1) || (petya == 1 && tonya == 1) || (vasya == 1 && tonya == 1)) {
      count++;
    }
  }
  print(count);
}