// Author: Reem Ezzat

//task8 (updated)
void main() {
  Vehicle v = Vehicle();
  v._model = "Honda";
  v._year = 2017;
  v.vehicleData();
}

class Vehicle {
  String? _model;
  int? _year;
  set model(String? model) {
    this._model = model;
  }

  String? get model => this._model;

  set year(int? year) {
    this._year = year;
  }

  int? get year => this._year;
  void vehicleData() {
    print('Vehicle Data  \nmodel: ${this._model} \nyear: ${this._year}');
  }
}
