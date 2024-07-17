// Author: Karol Hany
import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int values = 0;
  int result = 0;

  for (int i = 0; i < num; i++) {
    List<int> array = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    for (var element in array) {
      values += element;
    }
    if (values >= 2) {
      result++;
      values = 0;
    }
  }
  print(result);
}
