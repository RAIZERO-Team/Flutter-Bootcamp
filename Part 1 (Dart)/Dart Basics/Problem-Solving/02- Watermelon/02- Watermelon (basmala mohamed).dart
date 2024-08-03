// Author: basmala mohamed
import 'dart:io';
void main() {
  int weight = int.parse(stdin.readLineSync()!);
  
  if(weight % 2 == 0 && weight != 2) {
    print('YES');
  }else {
    print('NO');
  }
}