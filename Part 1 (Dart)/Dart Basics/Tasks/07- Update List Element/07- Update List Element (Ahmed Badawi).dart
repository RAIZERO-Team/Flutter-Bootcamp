// Author: Ahmed Badawi

void incrementList(List<int> list, int value){
  for (int i = 0; i < list.length; i++){
    list[i] += value;
  }
  print(list);
}

void main(){
  List<int> list = [1,2,3,4,5];
  int value = 5;
  incrementList(list, value);
}