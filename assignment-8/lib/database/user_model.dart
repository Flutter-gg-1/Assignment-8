// UserModel class to define the structure of the User object
class Users {
  // List of users
  List<User> users;

  // Constructor for Users
  Users({required this.users});

  // Factory method to convert JSON to Users object
  factory Users.fromJson(Map<String, dynamic> json) => Users(
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
      );

  // Method to convert Users object to JSON
  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

// User class to define the structure of the User object
class User {
  // User attributes
  String id;
  String first_name;
  String last_name;
  String email;
  Child children;

  // Constructor for User
  User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.children,
  });

  // Factory method to convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['_id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        email: json['email'],
        children: Child.fromJson(json['children']),
      );

  // Method to convert User object to JSON
  Map<String, dynamic> toJson() => {
        '_id': id,
        'first_name': first_name,
        'last_name': last_name,
        'email': email,
        'children': children.toJson(),
      };
}

// Child class to define the structure of the Child object
class Child {
  // Child attributes
  String first_name;
  String last_name;
  String email;

  // Constructor for Child
  Child({
    required this.first_name,
    required this.last_name,
    required this.email,
  });

  // Factory method to convert JSON to Child object
  factory Child.fromJson(Map<String, dynamic> json) => Child(
        first_name: json['first_name'],
        last_name: json['last_name'],
        email: json['email'],
      );

  // Method to convert Child object to JSON
  Map<String, dynamic> toJson() => {
        'first_name': first_name,
        'last_name': last_name,
        'email': email,
      };
}
