// Author: basmala mohamed;

void main() {
  String? s; 

  print(Length(s));
}

int Length(String? s) {
  return s?.length ?? 0;
}