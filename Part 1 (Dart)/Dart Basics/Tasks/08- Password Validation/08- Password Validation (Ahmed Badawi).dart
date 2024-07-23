// Author: Ahmed Badawi

import 'dart:io';

void checkPassword(String password){
  RegExp pass = RegExp(r'^\w*\d*$');
  String check = pass.stringMatch(password).toString();

  if (password.length >= 8 && password == check){
    print("Valid Password 🙂");
  } else {
    print("InValid Password ☹️");
  }
}

void main() {
  String pass = stdin.readLineSync()!;
  checkPassword(pass);
}