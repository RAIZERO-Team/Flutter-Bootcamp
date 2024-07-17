// Author: basmala mohamed
void main() {
  Map<String, dynamic> Students = {
    'Student 1': {},
    'Student 2': {
      'name': 'basmala mohamed',
      'age': 21,
      'Subjects': {
        'Subject 1': {},
        'Subject 2': {'Title': 'Programming', 'LessonCount': 22}
      }
    }
  };

  print(Students);
}