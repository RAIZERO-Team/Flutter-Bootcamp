// Author: Reem Ezzat

//task2
void main() {
  Home h = Home('House3', 'Cairo/Giza', 5);
  h.Display();
}

class Home {
  String? name;
  String? address;
  int? numberOfRooms;
  Home(this.name, this.address, this.numberOfRooms);
  void Display() {
    print('Name: $name \nAddress: $address \nNumber of rooms: $numberOfRooms');
  }
}
