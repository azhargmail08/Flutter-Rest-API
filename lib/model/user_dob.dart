class UserDOB {
  final DateTime date;
  final int age;

  UserDOB({required this.date, required this.age});

  factory UserDOB.fromMap(Map<String, dynamic> json) {
    return UserDOB(
      age: json['age'],
      date: DateTime.parse(json['date']),
    );
  }
}
