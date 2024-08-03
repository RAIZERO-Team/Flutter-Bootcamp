// Author: basmala mohamed
import 'dart:io';

void main() {
  int size = int.parse(stdin.readLineSync()!);
  List<int> cards = [];

  for (int i = 0; i < size; i++) {
    cards.add(int.parse(stdin.readLineSync()!));
  }

  int sereja = 0;
  int dima = 0;
  bool serejaPlaying = true;
  int left = 0;
  int right = size - 1;

  while (left <= right) {
    int chooseCard;
    if (cards[right] > cards[left]) {
      chooseCard = cards[right];
      right--;
    } else {
      chooseCard = cards[left];
      left++;
    }

    if (serejaPlaying) {
      sereja += chooseCard;
    } else {
      dima += chooseCard;
    }
    serejaPlaying = !serejaPlaying;
  }

  print('$sereja+" "+$dima');
}
