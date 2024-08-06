import 'child.dart';

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  Child? children;
  User({
    required this.id,
    required this.children,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        children: Child.fromJson(json['children']),
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map['_id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['children'] = children!.toJson();
    return map;
  }
}
