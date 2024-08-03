// Author: Reem Ezzat

void main() {
  List<dynamic> randomList = [4.6, 7.2, 8, 10, 4, 6.4, 'reem'];
  List<dynamic> FlutterTeam = [
    'Karol',
    41.3,
    'Ahmed',
    5,
    'Basmala',
    3,
    'Mahmoud',
    2,
    'Reem'
  ];
  print(TypeTest(randomList));
  print(TypeTest(FlutterTeam));
}

List<dynamic> TypeTest(List<dynamic> list) {
  List<double> doubleList = [];
  List<String> stringList = [];
  List<int> integerList = [];
//I will find out which type is more exist than the others
  for (int i = 0; i < list.length; i++) {
    if (list[i] is double) {
      doubleList.add(list[i]);
    } else if (list[i] is int) {
      integerList.add(list[i]);
    } else if (list[i] is String) {
      stringList.add(list[i]);
    }
  }
  if (doubleList.length > integerList.length &&
      doubleList.length >= stringList.length) {
    return doubleList;
  } else if (integerList.length >= doubleList.length &&
      integerList.length > stringList.length) {
    return integerList;
  }
  return stringList;
}
