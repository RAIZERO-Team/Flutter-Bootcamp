// Author: Reem Ezzat

void main() {
  //I found that We can do nested collections
  /*
  Map<String, Map<String, int>> Student = {
    'Student1': {'Reem': 20},
    'Student2': {'Yassmeen': 18}
  };
  Map<String, Map<String, int>> Subjects = {
    'Subject1': {'Math': 1},
    'Subject2': {'Science': 2}
  };*/
  Map<Map<String, Map<String, int>>, Map<String, Map<String, int>>> students = {
    {
      'Student1': {'Reem': 20},
    }: {
      'Subject1': {'Math': 1},
      'Subject2': {'Science': 2}
    },
    {
      'Student2': {'Yassmeen': 18}
    }: {
      'Subject1': {'Arabic': 1},
      'Subject2': {'Music': 2}
    }
  };

  students.forEach((key, value) {
    print('$key : $value');
  });
}
