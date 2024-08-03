// Author: basmala mohamed
import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  List<double> list = [];

  for (int i = 0; i < N ; i++) {
    list.add(double.parse(stdin.readLineSync()!));
  }
  print(Average(list).toStringAsFixed(6));
}

double Average(List<double> list) {
  double sum = 0;
  for (double number in list) {
    sum += number;
  }
  double result = sum / list.length;
  return result;
}