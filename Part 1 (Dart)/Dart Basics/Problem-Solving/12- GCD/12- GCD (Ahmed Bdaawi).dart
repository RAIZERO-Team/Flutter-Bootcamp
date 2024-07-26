// Author: Ahmed badawi
import 'dart:io';

int solve(int n1, int n2) {
  int? maxNum;
  List<int> list = [];

  if (n1 > n2){
    maxNum = n1;
  } else {
    maxNum = n2;
  }

  for (int i = 1; i <= maxNum; i++){
    if (n1 % i == 0 && n2 % i == 0){
      list.add(i);
    }
  }

  return list.last.toInt();
}

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print(solve(a , b));
}