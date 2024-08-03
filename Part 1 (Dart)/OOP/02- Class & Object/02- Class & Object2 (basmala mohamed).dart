// Author: basmala mohamed
void main() {
  Home myHome = Home("Basmala's Home", 'Sohag Street', 4);
  myHome.display();
}

class Home {
  String? name;
  String? address;
  int? numberOfRooms;

  Home(String name, String address, int numberOfRooms) {
    this.name = name;
    this.address = address;
    this.numberOfRooms = numberOfRooms;
  }

  void display() {
    print('Name: $name');
    print('Address: $address');
    print('Number of Rooms: $numberOfRooms');
  }
}