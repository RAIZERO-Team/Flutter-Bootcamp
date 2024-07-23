void lookUpMap(Map<String, dynamic> map, String key){
  if (map.containsKey(key)){
    print(map[key]);
  } else {
    print("There is no $key key in the map");
  }
}

void main(){
  Map<String, dynamic> map = {
    "Dart Basics": 10,
    "Dart OOP": 15,
    "Flutter": 30
  };

  lookUpMap(map, "Dart OOP");
  lookUpMap(map, "Test");
}