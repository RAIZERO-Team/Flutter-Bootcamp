// Author: Ahmed Badawi

import 'dart:io';

void solve(List<int> list) {
  int front = list[0];
  int end = list[list.length - 1];
  List<int> result = [];

  for (int i = 0 ; i< list.length ; i++) {
    if (front == end){
      result.add(front);
      break;
    }
    result.add(front);
    result.add(end);
    front++;
    end--;
  }

  print(result);
}

void main(){
  int size = int.parse(stdin.readLineSync()!);
  int value;
  List<int> list = [];

  for (int i = 0; i < size; i++){
    value = int.parse(stdin.readLineSync()!);
    list.add(value);
  }

  solve(list);
}