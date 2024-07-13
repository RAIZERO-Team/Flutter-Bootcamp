// Author: Karol Hany

lookupMap(Map<int, String> map, int key) {
      if (map.containsKey(key)) {
      print(map[key]);
    }else{
      print("Not Found");
    }
}

void main() {
  Map<int, String> map = {
    1: "Flutter Developer",
    2: "Web Developer",
    3: "AI",
  };

  lookupMap(map, 1);
  lookupMap(map, 4);
}
