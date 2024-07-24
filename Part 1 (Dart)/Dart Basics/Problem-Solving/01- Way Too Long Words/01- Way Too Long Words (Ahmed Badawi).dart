// Author: Ahmed Badawi

import 'dart:io';

void longWord(int cases){
  String word = " ";

  while(cases-- > 0){
    word = stdin.readLineSync()!;

    if (word.length >= 10){
      print(word[0] + (word.length - 2).toString() + word[word.length - 1]);
    } else {
      print(word);
    }
  }

}

void main(){
  int t = int.parse(stdin.readLineSync()!);

  longWord(t);
}