import 'package:rest_api_my_take/model/user_dob.dart';
import 'package:rest_api_my_take/model/user_location.dart';
import 'package:rest_api_my_take/model/user_names.dart';
import 'package:rest_api_my_take/model/user_avatar.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserNames name;
  final UserDOB dob;
  final UserLoc location;
  final UserAvatar picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserNames.fromMap(e['name']);
    final dob = UserDOB.fromMap(e['dob']);
    final location = UserLoc.fromMap(e['location']);
    final picture = UserAvatar.fromMap(e['picture']);
    return User(
      cell: e['cell'],
      email: e['email'],
      gender: e['gender'],
      nat: e['nat'],
      phone: e['phone'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
