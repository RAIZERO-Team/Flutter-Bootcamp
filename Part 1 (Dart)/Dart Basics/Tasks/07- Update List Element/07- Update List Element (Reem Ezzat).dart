// Author: Reem Ezzat

void main() {
  List<int> l = [5, 10, 15, 20, 25];
  print(incrementFunction(l, 5));
}

List<int> incrementFunction(List<int> list, int increment) {
  for (int i = 0; i < list.length; i++) {
    list[i] = list[i] + increment;
  }
  return list;
}
