class Child {
  String firstName;
  String lastName;
  String email;

  Child({required this.firstName, required this.lastName, required this.email});

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
    };
  }
}

class User {
  String id;
  String firstName;
  String lastName;
  String email;
  Child? children;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.children});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      children:
          json['children'] != null ? Child.fromJson(json['children']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'children': children?.toJson(),
    };
  }
}
