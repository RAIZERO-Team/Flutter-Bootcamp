// Author: basmala mohamed
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  List<int> newList = [];
  int front = 0;
  int end = n - 1;

  for (int i = 0; i < n; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }
  
  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      newList.add(list[front++]);
    } else {
      newList.add(list[end--]);
    }
  }
  print(newList.join(' '));
}