// Author: basmala mohamed
void main() {
  List<dynamic> list = [
    1,
    'basmala',
    3.87,
    'text',
    '@',
    'gmail',
    '.com',
    868,
    8878.675
  ];
  function(list);
}

void function(List<dynamic> list) {
  int intSum = 0;
  double doubleProduct = 1;
  String text = '';

  for (int i = 0; i < list.length; i++) {
    dynamic element = list[i];
    if (element is int) {
      intSum += element;
    } else if (element is double) {
      doubleProduct *= element;
    } else if (element is String) {
      text += element;
    }
  }
  print('Integers: $intSum');
  print('Doubles: $doubleProduct');
  print('Strings: $text');
}