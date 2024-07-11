import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < num; i++) {
    String str = stdin.readLineSync()!;
    if (str.length <= 10) {
      print(str);
    } else {
      print(str[0] + (str.length - 2).toString() + str[str.length - 1]);
    }
  }
}
