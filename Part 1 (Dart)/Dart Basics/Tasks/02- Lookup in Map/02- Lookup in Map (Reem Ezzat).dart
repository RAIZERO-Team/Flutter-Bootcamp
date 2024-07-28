// Author: Reem Ezzat

void main() {
  Map<String, int> studentAge = {
    'Ali': 18,
    'kareem': 18,
    'Noha': 17,
    'Sara': 19,
    'Asmaa': 16
  };
  print(LookUpInMab(studentAge, 'Noha'));
}

int? LookUpInMab(Map<String, int> map, String? key) {
  List<String> l = map.keys.toList();
  for (int i = 0; i < l.length; i++) {
    if (l[i] == key) {
      return map[l[i]];
    }
  }
  return -1;
}
