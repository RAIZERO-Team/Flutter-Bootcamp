// Author: Ahmed badawi
import 'dart:io';

int solve(List<int> list, int x){
  for (int i = 0; i < list.length; i++){
    if (list[i] == x){
      return i;
    }
  }

  return -1;
}

void main(){
  int num = int.parse(stdin.readLineSync()!);
  List<int> list = [];

  for (int i = 0; i < num; i++){
    int index = int.parse(stdin.readLineSync()!);
    list.add(index);
  }

  int x = int.parse(stdin.readLineSync()!);
  print(solve(list, x));
}