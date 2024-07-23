
void integerList(List<dynamic> list){
  for (int i = 0; i < list.length; i++){
    if (list[i] is int){
      print(list[i] * 10);
    } else if (list[i] is String){
      print(list[i] + ' This is a string');
    } else if (list[i] is double) {
      print(list[i] - 0.5);
    }
  }
}

void main(){
  integerList([5 , 10 , 'ahmed' , 40.5 , 55.55 , 'text', 15]);
}