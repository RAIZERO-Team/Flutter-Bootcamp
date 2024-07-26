// Author: basmala mohamed
import 'dart:math';
void main() {
  circle(3.5);
}

void circle(double radius) {
  double circumference = 2 * pi * radius;
  double area = pi * radius * radius;
  
  print('Circumference:$circumference');
  print('Area:$area');
}