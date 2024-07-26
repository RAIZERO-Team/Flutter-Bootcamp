// Author: Ahmed Badawi

import 'dart:io';

void solve(List<double> list){
  double sum = 0.0;
  for (int i=0; i < list.length; i++){
    sum += list[i];
  }

  print((sum / list.length).toStringAsFixed(6));
}

void main(){
  int size = int.parse(stdin.readLineSync()!);
  List<double> list = [];
  double? index;
  
  for (int i=0; i < size; i++){
    index = double.parse(stdin.readLineSync()!);
    list.add(index);
  }

  solve(list);
}