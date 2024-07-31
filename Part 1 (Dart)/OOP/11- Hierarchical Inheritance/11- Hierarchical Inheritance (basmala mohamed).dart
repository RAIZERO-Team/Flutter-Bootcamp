// Author: basmala mohamed
void main() {
  var rectangle = Rectangle(4, 5);
  print('Rectangle: ${rectangle.area()}');

  var triangle = Triangle(7, 8);
  print('Triangle: ${triangle.area()}');
}

class Shape {
  double diameter1;
  double diameter2;

  Shape(this.diameter1, this.diameter2);
}

class Rectangle extends Shape {
  Rectangle(super.diameter1, super.diameter2);

  double area() => diameter1 * diameter2;
}

class Triangle extends Shape {
  Triangle(super.diameter1, super.diameter2);

  double area() => 0.5 * diameter1 * diameter2;
}