// Author: Basmala Mohamed

void main() {
  Map<int, String> info = {1 : 'Ahmed' , 2 : 'Basmala' , 3 : 'Karol' , 4 : 'Reem'};

  print(info);

  print(Value(info, 2));
  print(Value(info, 5));
}

String Value(Map<int, String> map, int key) {
  return map[key] ?? '0';
}