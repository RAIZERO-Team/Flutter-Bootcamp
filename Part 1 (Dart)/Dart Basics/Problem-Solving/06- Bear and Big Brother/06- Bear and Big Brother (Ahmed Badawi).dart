// Author: Ahmed Badawi
import 'dart:io';

int solve(int limak, int bob){
  int count = 0;

  while(limak <= bob){
    count++;
    limak *= 3;
    bob *= 2;
  }

  return count;
}

void main(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  print(solve(a,b));
}