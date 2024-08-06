class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Map<String, String> children;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: json['children']);
  }

  Map<String,dynamic> toJson() {
    return {
      '_id' : id,
      'first_name' : firstName,
      'last_name' : lastName,
      'email' : email,
      'children' : children
    };
  }
}
