// lib/user_model.dart
class User {
  String firstName;
  String lastName;
  String email;

  User({required this.firstName, required this.lastName, required this.email});

  // Convert a User object into a map
  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
    };
  }

  // Create a User object from a map
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
    );
  }
}