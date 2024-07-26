// Author: Ahmed Badawi

import 'dart:io';

/*
input  -> 3 17 4
output -> 13

1k  2k  3k  4k  --> nk
3   6   9   12

17 + 13 = 30 -> 4 bananas
*/

void solve(int bananaCost, int initialNumber, int bananaNumber){
  int borrowMoney = 0;
  for (int i = 1; i <= bananaNumber; i++){
    borrowMoney += (bananaCost * i);
  }

  print(borrowMoney - initialNumber);
}

void main(){
  int k,n,w;
  k = int.parse(stdin.readLineSync()!);
  n = int.parse(stdin.readLineSync()!);
  w = int.parse(stdin.readLineSync()!);

  solve(k,n,w);
}
