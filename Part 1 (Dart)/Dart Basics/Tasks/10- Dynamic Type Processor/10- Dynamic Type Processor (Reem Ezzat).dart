// Author: Reem Ezzat

void main() {
  List<dynamic> list = [3, 4, 7, "Dart", "Basics", "Task 10"];
  function(list);
}

void function(List<dynamic> list) {
  int sum = 0;
  String result = "";
  for (int i = 0; i < list.length; i++) {
    if (list[i] is int) {
      int value = list[i];
      sum = sum + value;
    } else if (list[i] is String) {
      result = result + " " + list[i];
    }
  }
  print('concatenated string: $result \nsum of integers: $sum');
}
