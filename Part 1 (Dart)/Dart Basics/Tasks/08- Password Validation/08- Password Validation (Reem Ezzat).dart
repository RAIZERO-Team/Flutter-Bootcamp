// Author: Reem Ezzat

import 'dart:core';

void main() {
  String password = '123456833Admin';
  String password2 = '123456833';

  print('is password valid? ${Passvalidation(password)}');
  print('is password2 valid? ${Passvalidation(password2)}');
}

bool Passvalidation(String pass) {
  RegExp expression = RegExp(r'^(?=.*[0-9])(?=.*[a-zA-Z])');

  if (pass.length >= 8 && expression.hasMatch(pass)) {
    return true;
  } else {
    return false;
  }
}
//(?=.* pattern--> Positive lookahead assertion to ensure at least one ( )s present anywhere in the string
