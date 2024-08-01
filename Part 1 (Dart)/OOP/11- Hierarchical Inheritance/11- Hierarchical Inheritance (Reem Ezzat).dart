// Author: Reem Ezzat

//task11 (updated)
void main() {
  Rectangle rectangle = Rectangle(diameter1: 4, diameter2: 5);
  Triangle triangle = Triangle(diameter1: 3, diameter2: 4);
  print(
      'Area of Rectangle: ${rectangle.Area()} \nArea of Triangle: ${triangle.Area()}');
}

class Shape {
  double? diameter1;
  double? diameter2;
  Shape({required this.diameter1, required this.diameter2});
}

class Rectangle extends Shape {
  double? length;
  double? width;

  Rectangle({required super.diameter1, required super.diameter2}) {
    this.length = diameter1;
    this.width = diameter2;
  }

  double Area() {
    return length! * width!;
  }
}

class Triangle extends Shape {
  double? baseOfTriangle;
  double? height;

  Triangle({required super.diameter1, required super.diameter2}) {
    this.baseOfTriangle = diameter1;
    this.height = diameter2;
  }
  double? Area() {
    return this.height! * this.baseOfTriangle! * (1 / 2);
  }
}
