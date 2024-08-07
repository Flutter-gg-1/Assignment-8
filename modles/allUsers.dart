class Users {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Map<String, String> child;
// Constructor for creating a new Users object.
  Users(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.child});
// Creates a Users object from a JSON map.
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      child: json['children'],
    );
  }
// Converts a Users object to a JSON map.
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
