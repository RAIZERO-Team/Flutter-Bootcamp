// Author: basmala mohamed
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> array = [];

  for (int i = 0; i < n; i++) {
    array.add(int.parse(stdin.readLineSync()!));
  }

  int X = int.parse(stdin.readLineSync()!);
  bool found = false;

  for (int i = 0; i < n; i++) {
    if (array[i] == X) {
      print(i);
      found = true;
      break;
    }
  }

  if (!found) {
    print('-1');
  }
}