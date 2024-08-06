import 'children.dart';

class User {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  Children? children;

  static List<User> usersList = [];

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});

  factory User.fromJson(Map<String, dynamic> json) {
    User user = User(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: Children.fromJson(json['children']));

    usersList.add(user);
    return user;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    map['_id'] = id;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['children'] = children?.toJson();
    return map;
  }

  static List<Map<String, dynamic>?> displayAllUsers() {
      for (var user in usersList) {
      user.printUserInformation();
    }
    return usersList.map((user) {
      return user.toJson();
    }).toList();
  }

  static Map<String, dynamic>? displayUserByName(String firstName) {
    for (var user in usersList) {
      if (user.firstName == firstName) {
        user.printUserInformation();
        return user.toJson();
      }
    }
    return null;
  }

  static Map<String, dynamic>? displayUserByEmail(String email) {
    for (var user in usersList) {
      if (user.email == email) {
        user.printUserInformation();
        return user.toJson();
      }
    }
    return null;
  }

  static Map<String, dynamic>? displayChildren(String firstName) {
    for (var user in usersList) {
      if (user.firstName == firstName) {
        user.children!.printChildrenInformation();
        return user.children?.toJson();
      }
    }
    return null;
  }

  printUserInformation() {
    print('ID: $id');
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('Email: $email');
    print('Children: $children');
    print('');
  }
}
