class Student {
  String id;
  String name;
  int score;

  @override
  String toString() {
    return 'Student{id: $id, name: $name, score: $score}';
  }

  Student({this.id, this.name, this.score});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(id: json['id'], name: json['name'], score: json['score']);
  }
}
