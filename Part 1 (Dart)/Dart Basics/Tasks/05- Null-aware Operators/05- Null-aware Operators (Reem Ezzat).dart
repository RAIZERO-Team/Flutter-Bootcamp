// Author: Reem Ezzat

void main() {
  print(IsStringNull('String'));
  print(IsStringNull());
}

int IsStringNull([String? s]) {
  if (s == null)
    return 0;
  else
    return s.length;
}
