// Author: Ahmed Badawi

/*
students => {
  Student1,
  Student2 => {
    name => 'STUDENT_NAME',
    age => STUDENT_AGE,
    subjects => {
      SUBJECT1,
      SUBJECT2 => {
        title => SUBJECT_TITLE,
        lesson_count => LESSON_COUNT
      }
    }
  }
}
*/

List<Map<String, dynamic>> students = [
  {
    'name': 'Badawi',
    'age': 20,
    'subjects': <Map<String, dynamic>> [
      {
        'title': 'Dart',
        'lesson_count': 10
      },
      {
        'title': 'Flutter',
        'lesson_count': 50
      }
    ]
  },
  {
    'name': 'Ahmed',
    'age': 20,
    'subjects': <Map<String, dynamic>> [
      {
        'title': 'Dart',
        'lesson_count': 15
      },
      {
        'title': 'Flutter',
        'lesson_count': 40
      }
    ]
  }
];

/*
  for(int i = 0 ; i < students.length; i++) {
    print('Student ${i+1}');
    print('  name: ${students[i]['name']}');
    print('  age: ${students[i]['age']}');
    print('  subjects:');
    print('    subject ${i+1}:');

    for (int j =0 ; j < students.length; j++) {
      print('      title: ${students[j]['subjects'][j]['title']}');
      print('      lesson count: ${students[j]['subjects'][j]['lesson_count']}');
    }
  }
*/

void main(){
  String output = ' ';
  for (int i = 0; i < students.length;i++){
    output += ''' 
  Students ${i+1}:\n
  \t - name: ${students[i]['name']}\n
  \t - age: ${students[i]['age']} \n
  \t - subjects: \n
    ''';

    for (int j = 0; j < students[i]['subjects'].length; j++){
      output += '''
  \t\t Subject ${j+1}: \n
  \t\t\t - title: ${students[i]['subjects'][j]['title']}\n
  \t\t\t - lesson count: ${students[i]['subjects'][j]['lesson_count']}\n
''';
    }
  }

  print(output);
}