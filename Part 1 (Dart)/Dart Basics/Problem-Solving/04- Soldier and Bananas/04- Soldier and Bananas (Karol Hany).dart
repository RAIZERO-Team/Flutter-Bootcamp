// Author: Karol Hany
import 'dart:io';

void main() {
  List<int> array = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int k = array[0];
  int n = array[1];
  int w = array[2];

  int result = k * (w * (w + 1)) ~/ 2;
  int total = result - n;
  if (total > 0) {
    print(total);
  } else {
    print(0);
  }
}
