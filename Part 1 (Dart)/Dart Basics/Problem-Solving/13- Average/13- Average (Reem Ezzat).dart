// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  List<double> arr = [];
  for (int i = 0; i < n; i++) {
    double? value = double.parse(stdin.readLineSync()!);
    arr.add(value);
  }

  print(Average(arr).toStringAsFixed(7));
}

double Average(List<double> list) {
  double sumOfElements = 0;
  for (int i = 0; i < list.length; i++) {
    sumOfElements = sumOfElements + list[i];
  }
  double average = sumOfElements / list.length;
  return average;
}
