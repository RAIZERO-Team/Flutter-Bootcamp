// Author: Ahmed Badawi

import 'dart:io';

int nullableString(String? str){
  if (str != null){
    return str.length;
  } else {
    return 0;
  }
}

void main(){
  String? str = stdin.readLineSync();

  print(nullableString(str!));
}