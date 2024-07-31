// Author: Ahmed Badawi

void main(){
  Person person = Person();

  person.name = "Ahmed Badawi";
  person.printDetails();
}

class Person {
  String? name;
  String? planet;

  Person (){
    this.name = ""; 
    this.planet = "Earth";
  }

  void printDetails(){
    print("The Person Name: $name");
    print("The Person Planet: $planet");
    print("**" * 10);
  }
}

