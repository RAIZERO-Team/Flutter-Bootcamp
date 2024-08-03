// Author: Reem Ezzat

//task15
void main() {
  Rectangle rectangle = Rectangle(4, 5);
  Triangle triangle = Triangle(3, 6);
  print(
      'Area of Rectangle= ${rectangle.Area()} \nArea of Triangle= ${triangle.Area()}');
}

abstract class Shape {
  double Area();
}

class Rectangle implements Shape {
  double? length;
  double? width;
  Rectangle(this.length, this.width);

  @override
  double Area() {
    return length! * width!;
  }
}

class Triangle implements Shape {
  double? triangleBase;
  double? height;
  Triangle(this.triangleBase, this.height);

  @override
  double Area() {
    return 1 / 2 * height! * triangleBase!;
  }
}
