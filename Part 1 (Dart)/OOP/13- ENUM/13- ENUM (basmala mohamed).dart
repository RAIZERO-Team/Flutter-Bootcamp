// Author: basmala mohamed
void main() {
  print(Days.values);

  var holiday = Days.Friday;
  print('My day off is $holiday');
}

enum Days { 
  Saturday, 
  Sunday, 
  Monday, 
  Tuesday, 
  Wednesday, 
  Thursday, 
  Friday 
}