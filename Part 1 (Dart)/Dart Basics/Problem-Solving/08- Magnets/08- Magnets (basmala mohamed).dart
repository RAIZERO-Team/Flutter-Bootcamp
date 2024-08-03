// Author: basmala mohamed
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String previousMagnet = stdin.readLineSync()!;
  int groups = 1;

  for (int i = 1; i < n; i++) {
    String currentMagnet = stdin.readLineSync()!;
    
    if (currentMagnet[0] == previousMagnet[1]) {
      groups++;
    }
    previousMagnet = currentMagnet;
  }
  
  print(groups);
}