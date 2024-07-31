// Author: basmala mohamed
void main() {
  var vehicle = Vehicle('KIA', 2022);

  print('Model: ${vehicle.model}');
  print('Year: ${vehicle.year}');
}

class Vehicle {
  String _model;
  int _year;

  Vehicle(this._model, this._year);

  set model(String model) => _model = model;

  set year(int year) {
    if (year > 0) {
      _year = year;
    }
  }

  String get model => _model;

  int get year => _year;
}