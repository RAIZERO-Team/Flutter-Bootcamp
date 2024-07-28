// Author: Reem Ezzat

void main() {
  print(CircleCalculations(4));
}

Map<String, double> CircleCalculations(double radius) {
  double circumference = 2 * 3.14 * radius;
  double area = 3.14 * radius * radius;
  Map<String, double> result = {'Circumference': circumference, 'Area ': area};
  return result;
}
