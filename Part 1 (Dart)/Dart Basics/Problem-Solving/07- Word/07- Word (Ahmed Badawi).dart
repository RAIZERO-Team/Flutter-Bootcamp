// Author: Ahmed Badawi

import 'dart:io';

// HoUse
// house

// ViP
// VIP

String solve(String str){
  int countUpper = 0;
  int countLower = 0;

  for (int i = 0; i < str.length; i++){
    if (str[i].contains(RegExp(r'^[A-Z]*$'))){
      countUpper++;
    } else {
      countLower++;
    }
  }

  if (countUpper > countLower){
    return str.toUpperCase();
  }

  return str.toLowerCase();
}

void main(){
  String str = stdin.readLineSync()!;
  print(solve(str));
}