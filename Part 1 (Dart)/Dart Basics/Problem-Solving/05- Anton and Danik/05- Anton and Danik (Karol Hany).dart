// Author: Karol Hany
import 'dart:io';

void main() {
  int D = 0;
  int A = 0;
  int num = int.parse(stdin.readLineSync()!);
  String str = stdin.readLineSync()!;
  for (int i = 0; i < num; i++) {
    if (str[i] == 'D') {
      D++;
    } else {
      A++;
    }
  }
  if (D > A) {
    print('Danik');
  } else if (A > D) {
    print('Anton');
  } else {
    print('Friendship');
  }
}
