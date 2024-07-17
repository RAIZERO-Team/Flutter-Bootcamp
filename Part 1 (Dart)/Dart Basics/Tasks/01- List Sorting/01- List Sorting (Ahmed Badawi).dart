// import 'dart:io';

void sortedList(List<int> elements){
  int temp;
  
  for (int i = 0; i < elements.length; i++){
    for (int j = 0; j < elements.length - 1; j++){
      if (elements[j] > elements[j+1]){
        temp = elements[j];
        elements[j] = elements[j+1];
        elements[j+1] = temp;
      }
    }
  }

  print(elements);
}

void main(){
  late List<int> elements = [10, 5, 6, 1 , 2, 3, 4,];
  sortedList(elements);

}