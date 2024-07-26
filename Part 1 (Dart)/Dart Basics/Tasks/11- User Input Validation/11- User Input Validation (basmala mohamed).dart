// Author: basmala mohamed
import 'dart:io';
void main() {
  print('Enter your name:');
  String username = stdin.readLineSync()!;

  print('Enter password:');
  String password = stdin.readLineSync()!;

  print('Enter your age:');
  int age = int.parse(stdin.readLineSync()!);

  validateUserInput(username, password, age);
}

void validateUserInput(String username, String password, int age) {
  //assert(username.isNotEmpty && username.length >= 3, 'Username must be at least 3 characters long and not empty');
  //assert(password.isNotEmpty && password.length >= 8, 'Password must be at least 8 characters long and not empty');
  //assert(age >= 18, 'Age must be a positive integer and at least 18 characters');
  bool isValid = true;

  if (username.isEmpty || username.length < 3) {
    print('Username must be at least 3 characters long and not empty');
    isValid = false;
  }
  if (password.isEmpty || password.length < 8) {
    print('Password must be at least 8 characters long and not empty');
    isValid = false;
  }
  if (age < 18) {
    print('Age must be a positive integer and at least 18.');
    isValid = false;
  }
  if (isValid) {
    print('Success Registration');
  }
}