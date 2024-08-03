// Author: Reem Ezzat

//task19
void main() {
  Generic g = Generic(4, 'text');
  g.display();
  Generic integers = Generic<int>(8, 3);
  integers.display();
  Generic strings = Generic('task 19', 'OOP');
  strings.display();
}

class Generic<g> {
  g variable1;
  g variable2;
  Generic(this.variable1, this.variable2);

  display() {
    print('first variable= $variable1 ,  second variable= $variable2');
  }
}
