// Author: Reem Ezzat

void main() {
  List<int> list = [4, 5, 8, 3, 9, 3, 2];
  print(listSorting(list));
}

List<int> listSorting(List<int> integerList) {
  for (int j = 0; j < integerList.length; j++) {
    int minIndex = j;

    for (int i = j + 1; i < integerList.length; i++) {
      if (integerList[i] < integerList[minIndex]) {
        minIndex = i;
      }
    }
    if (integerList[minIndex] < integerList[j]) {
      int temb = integerList[minIndex];
      integerList[minIndex] = integerList[j];
      integerList[j] = temb;
    }
  }
  return integerList;
}
