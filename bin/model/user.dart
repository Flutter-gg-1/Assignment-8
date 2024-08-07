import 'children.dart';

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  List<Children>? children;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required List<Children> children});

  // Create a User object from a map
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: List.from(json["children"]).map((element) {
          return Children.fromJson(element);
        }).toList());
  }

  // Convert a User object into a map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
    };
  }
}
