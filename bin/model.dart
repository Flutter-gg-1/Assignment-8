import 'dart:convert';

import 'data.dart';

class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Children children;

  User(
      {required this.children,
      required this.email,
      required this.firstName,
      required this.id,
      required this.lastName});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        children: Children.fromJson(json['children']),
        email: json["email"],
        firstName: json["first_name"],
        id: json["_id"],
        lastName: json["last_name"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["_id"] = id;
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["email"] = email;
    map["children"] = children.toJson();

    return map;
  }
}

class Children {
  final String firstName;
  final String lastName;
  final String email;

  Children(
      {required this.email, required this.firstName, required this.lastName});

  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["email"] = email;
    return map;
  }
}

void getAllUsers() {
  List<User> myUsers = [];
  for (var element in myData) {
    myUsers.add(User.fromJson(element));
  }
  for (var element in myUsers) {
    print(element.toJson());
  }
}

String getUserByFirstName(String firstName) {
  final matchingUser =
      myData.firstWhere((user) => user['first_name'] == firstName);
  var user = User.fromJson(matchingUser);
  return jsonEncode(user);
}

String getUserByEmail(String email) {
  final matchingUser = myData.firstWhere((user) => user['email'] == email);
  var user = User.fromJson(matchingUser);
  return jsonEncode(user);
}

String getChildByFirstName(String childFirstName) {
  for (var user in myData) {
    var userObj = User.fromJson(user);
    if (userObj.children.firstName == childFirstName) {
      return jsonEncode(userObj.children);
    }
  }
  // Return an empty JSON object if no child is found
  return jsonEncode({});
}
