// Author: Ahmed Badawi

void main() {
  Home home1 = Home (
    name: "Home",
    address: "El Mesaha, Giza",
    numOfRooms: 3
  );

  home1.display();
}

class Home {
  String? name;
  String? address;
  int? numOfRooms;

  Home({
    String? name,
    String? address,
    int? numOfRooms
  }) {
    this.name = name;
    this.address = address;
    this.numOfRooms = numOfRooms;
  }

  void display() {
    print("Home Name: $name");
    print("Home Address: $address");
    print("Number of Rooms: $numOfRooms");
  }
}
