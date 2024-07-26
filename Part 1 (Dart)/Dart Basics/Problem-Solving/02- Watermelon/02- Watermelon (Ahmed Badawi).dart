// Author: Ahmed Badawi

import 'dart:io';

void solve(int num){
  if (num % 2 == 0 && num != 2) {
    print("YES");
  } else {
    print("NO");
  }
}

void main(){
  int? number;
  number = int.parse(stdin.readLineSync()!);
  solve(number);
}