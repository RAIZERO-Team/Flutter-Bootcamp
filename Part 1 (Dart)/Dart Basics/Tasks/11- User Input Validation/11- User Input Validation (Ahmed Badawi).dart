import 'dart:io';

/*
Create a Dart program that simulates user registration. 
The program should take a username, password, and age as input.

Use assertions to validate:
* The username is not empty and has a minimum length of 3 characters.
* The password is not empty and has a minimum length of 8 characters.
* The age is a positive integer and greater than or equal to 18.

Provide custom error messages for each assertion. The program should print a success message if all assertions pass
*/

void registrationForm({required String username, String? password, int? age}){
  RegExp usernameChecker = RegExp(r'^[a-z]*\w*$');
  RegExp passwordChecker = RegExp(r'\w*\d*');
  // RegExp ageChecker = RegExp(r'\d*');

  String nameCheck = usernameChecker.stringMatch(username).toString();
  String passCheck = passwordChecker.stringMatch(password!).toString();
  // int ageCheck = ageChecker.allMatches(age).map((item) => item.group(0));

  try {
    if (username == '' || username.length < 3 || username != nameCheck){
      throw Exception('The $username is not valid');
    } else {
      if (password == '' || password.length < 8 || password != passCheck){
        throw Exception('The $password is not valid');
      } else {
          if (age! < 0 && age < 18){
            throw Exception('The $age is not valid');
          } else {
            print('Registed Successfully');
          }
      }
    }
  } catch (e) {
    print(e);
  }
}

void main(){
  print('********  Welcome to Our Application ********');

  print('Please enter your info to register');

  print('Enter your username');
  String username = stdin.readLineSync()!;
  print('Enter your password');
  String password = stdin.readLineSync()!;
  try{
  print('Enter your age');
  int age = int.parse(stdin.readLineSync()!);
  registrationForm(username: username, password: password, age: age);

  } catch (e) {
    print('The age is not valid');
  }
}