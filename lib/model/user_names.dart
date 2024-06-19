class UserNames {
  final String title;
  final String first;
  final String last;

  UserNames({required this.title, required this.first, required this.last});

  factory UserNames.fromMap(Map<String, dynamic> json) {
    return UserNames(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}
