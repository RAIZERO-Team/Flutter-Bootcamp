// Author: Ahmed Badawi

import 'dart:math';

void circle(double radius){
  double circumference;
  double area;

  circumference = (2 * pi * radius);
  area = (pi * radius * radius);

  print(circumference);
  print(area);
}

void main(){
  circle(5.5);
}