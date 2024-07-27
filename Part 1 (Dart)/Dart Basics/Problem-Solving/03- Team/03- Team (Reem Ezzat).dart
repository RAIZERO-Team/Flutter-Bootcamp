// Author: Reem Ezzat

import 'dart:io';

void main() {
  int? n = int.parse(stdin.readLineSync()!);
  int problemsToSubmit = 0;
  for (int i = 0; i < n; i++) {
    String? votes = stdin.readLineSync()!;
    if (votes == ("1 1 0") ||
        votes == ("0 1 1") ||
        votes == ("1 0 1") ||
        votes == ("1 1 1")) {
      problemsToSubmit++;
    }
  }
  print(problemsToSubmit);
}
