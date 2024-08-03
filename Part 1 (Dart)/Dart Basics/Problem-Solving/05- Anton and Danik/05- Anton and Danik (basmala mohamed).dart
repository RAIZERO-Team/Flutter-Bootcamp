// Author: basmala mohamed
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String result = stdin.readLineSync()!;
  int anton = 0;
  int danik = 0;

  for (int i = 0; i < n; i++) {
    if (result[i] == 'A') {
      anton++;
    } else if (result[i] == 'D') {
      danik++;
    }
  }

  if (anton > danik) {
    print('Anton');
  } else if (anton < danik) {
    print('Danik');
  } else {
    print('Friendship');
  }
}