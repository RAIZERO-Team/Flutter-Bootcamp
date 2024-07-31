// Author: Ahmed Badawi

void main(){
  Rectangle rectangle = Rectangle(10.0, 20.0);
  print(rectangle.area());

  Triangle triangle = Triangle(10.0, 20.0);
  print(triangle.area());
}

class Shape {
  double? diameter1;
  double? diameter2;

  Shape() : diameter1 = 0.0, diameter2 = 0.0;

  Shape.addDiameter(double diameter1, double diameter2) : this.diameter1 = diameter1, this.diameter2 = diameter2;

  double area() => 0.0;
}

class Rectangle extends Shape {
  Rectangle(double diameter1, double diameter2) : super.addDiameter(diameter1, diameter2);

  @override
  double area() => diameter1! * diameter2!;
}

class Triangle extends Shape {
  Triangle(double diameter1, double diameter2) : super.addDiameter(diameter1, diameter2);

  @override
  double area() => 0.5 * diameter1! * diameter2!;
}