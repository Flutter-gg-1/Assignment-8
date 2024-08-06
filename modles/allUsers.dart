import '../bin/model.dart';

class Users {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Map<String, String> child;

  Users(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.child});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      child: json['children'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'chaild': child,
    };
  }
}
