// Author: basmala mohamed
void main() {
  Rectangle rectangle = Rectangle(4, 5);
  print('Rectangle: ${rectangle.area()}');

  Triangle triangle = Triangle(7, 8);
  print('Triangle: ${triangle.area()}');
}

abstract class Shape {
  double diameter1;
  double diameter2;

  Shape(this.diameter1, this.diameter2);

  area();
}

class Rectangle extends Shape {
  Rectangle(super.diameter1, super.diameter2);

  @override
  double area() => diameter1 * diameter2;
}

class Triangle extends Shape {
  Triangle(super.diameter1, super.diameter2);

  @override
  double area() => 0.5 * diameter1 * diameter2;
}