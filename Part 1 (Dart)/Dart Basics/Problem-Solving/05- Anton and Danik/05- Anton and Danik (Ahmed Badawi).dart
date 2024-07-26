// Author: Ahmed Badawi

import 'dart:io';

void solve(int cases){
  String str = " ";
  int antonCount = 0, danikCount = 0;
  while (cases-- > 0){
    str = stdin.readLineSync()!;
    if (str == 'A'){
      antonCount++;
    } else {
      danikCount++;
    }
  }
    print(antonCount > danikCount ? "Anton" : "Danik");
}

void main(){
  int t = int.parse(stdin.readLineSync()!);
  solve(t);
}