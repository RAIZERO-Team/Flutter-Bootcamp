// Author: basmala mohamed

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int increment = 1;

  print(numbers);

  incrementList(numbers , increment);

  print(numbers);
}

void incrementList(List numbers , int increment) {
  for (int i = 0; i < 5 ; i++) {
    numbers[i] += increment;
  }
}