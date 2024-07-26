// Author: basmala mohamed
import 'dart:io';
void main() {
  print('Enter password:');
  String password = stdin.readLineSync()!;

  passwordValidation(password);
}

void passwordValidation(String password) {
  bool length = password.length >= 8;
  bool letters = password.contains(RegExp(r'[a-zA-Z]'));
  bool numbers = password.contains(RegExp(r'\d'));

  if (length && letters && numbers) {
    print('Password is valid');
  }else {
    print('Password is invalid');
  }
}