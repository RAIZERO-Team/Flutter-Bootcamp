// Author: Ahmed Badawi

// ignore: unused_import
import 'dart:io';

List integerList(List<dynamic> list){
  List<int> newList = [];

  for (int i = 0; i < list.length; i++){
    if (list[i] is int){
      newList.add(list[i]);
    }
  }
  return newList;
}

void main(){
  print(integerList([12 , 56 , 'saf' , 4.5 , 5.55 , 'ahmed', 20]));
}

  // for (int i = 0; i < 5; i++){
  //   int value = int.parse(stdin.readLineSync()!);
  //   list.insert(i, value);
  // }

  // List<int> list = [];
  
  // print('Enter elements (type "exit" to stop):');
  // while (true) {
  //   int? input = int.parse(stdin.readLineSync()!);
  //   if (input == 10) {
  //     break;
  //   }
  //   list.add(input);
  // }

  // print('You entered:');
  // for (var element in list) {
  //   print(element);
  // }