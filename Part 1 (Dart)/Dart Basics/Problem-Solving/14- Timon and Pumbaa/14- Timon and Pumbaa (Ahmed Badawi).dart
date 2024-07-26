// Author: Ahmed Badawi

import 'dart:io';

void solve (int a, int b){
  (a - b) > 0 ? print(a-b) : print(0);
}

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  solve(a, b);
}

