// Author: basmala mohamed
void main() {
  var integer = Generic<int>([1, 2, 3]);
  var doubles = Generic<double>([1.5, 2.5, 3.5]);
  var string = Generic<String>(['Basmala', 'Reem', 'Karol']);

  print('Integers: ${integer.X}');
  print('Doubless: ${doubles.X}');
  print('Strings: ${string.X}');
}

class Generic<G> {
  List<G> X;

  Generic(this.X);
}