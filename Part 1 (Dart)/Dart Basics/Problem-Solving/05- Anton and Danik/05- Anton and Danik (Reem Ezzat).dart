// Author: Reem Ezzat

import 'dart:io';

void main() {
  int Anton = 0;
  int Danik = 0;
  int? n = int.parse(stdin.readLineSync()!);

  String? result = stdin.readLineSync()!;

  for (int i = 0; i < n; i++) {
    if (result[i] == 'A') {
      Anton++;
    } else if (result[i] == 'D') {
      Danik++;
    }
  }
  if (Anton > Danik) {
    print("Anton");
  } else if (Danik > Anton) {
    print("Danik");
  } else {
    print("Friendship");
  }
}
