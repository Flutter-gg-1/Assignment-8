import 'children.dart';

class Person {
  String id;
  String firstName;
  String lastName;
  String email;
  Children children;

  Person(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: Children.fromJson(json['children'] as Map<String, String>));
  }
}
