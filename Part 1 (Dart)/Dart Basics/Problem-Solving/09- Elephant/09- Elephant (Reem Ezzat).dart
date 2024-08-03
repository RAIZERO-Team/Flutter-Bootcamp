// Author: Reem Ezzat

import 'dart:io';

void main() {
  double? distance = double.parse(stdin.readLineSync()!);
  int minSteps = 0;
  if (distance == 1 ||
      distance == 2 ||
      distance == 3 ||
      distance == 4 ||
      distance == 5)
    minSteps = 1;
  else {
    double d = distance / 5;
    if (d % d.toInt() == 0) {
      minSteps = d.toInt();
    } else {
      minSteps = d.toInt() + 1;
    }
  }
  print(minSteps);
}
