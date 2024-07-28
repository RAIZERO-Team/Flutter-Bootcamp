// Author: Reem Ezzat

import 'dart:io';

void main() {
  print('Enter username: ');
  String? username = stdin.readLineSync()!;
  print('Enter Password: ');
  String? password = stdin.readLineSync()!;
  print('Enter Age : ');
  int? age = int.parse(stdin.readLineSync()!);
  if (username.isNotEmpty &&
      username.length >= 3 &&
      password.isNotEmpty &&
      password.length >= 8 &&
      age > 0 &&
      age >= 18) {
    print('Done Sucessfully');
  } else {
    print("Error, Look at the Assertion error message Please");
  }

  assert(username.isNotEmpty && username.length >= 3,
      'username must be at least 3 letters');

  assert(password.isNotEmpty && password.length >= 8,
      'Password must be at least 8 characters');

  assert(age > 0 && age >= 18, 'Age must be greater than 18');
}
