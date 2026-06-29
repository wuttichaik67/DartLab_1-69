void main() {
  List<String> subjects = ['Mathematics', 'Thai', 'English'];

  print(subjects.length);
  print(subjects.first);
  print(subjects.last);

  subjects.add('Science');
  print(subjects);

  Map<String, int> studentScores = {
    'Mathematics': 90,
    'Thai': 85,
    'English': 88,
  };

  print(studentScores['English']);

  studentScores['Science'] = 92;
  print(studentScores);
  print(studentScores.keys);
  print(studentScores.values);
}