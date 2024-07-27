// Author: basmala mohamed
import 'dart:io';
void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    String? Word = stdin.readLineSync();

    if (Word != null && Word.length > 10) {
      int Count = Word.length - 2;
      Word = '${Word[0]}$Count${Word[Word.length - 1]}';
      print(Word);
    }else {
      print(Word);
    }
  }
}