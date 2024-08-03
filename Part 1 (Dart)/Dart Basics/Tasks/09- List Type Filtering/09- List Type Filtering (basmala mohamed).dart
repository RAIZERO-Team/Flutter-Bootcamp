// Author: basmala mohamed
void main() {
  List<dynamic> list = ['basmala', 1, 6.897, 'reem', 3, 0, 'dart', 5.8, 10];

  print('Integers: ${intList(list)}');
}

List<int> intList(List<dynamic> list) {
  List<int> newList = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] is int) {
      newList.add(list[i]);
    }
  }
  return newList;
}