import 'dart:convert';

import 'data.dart';

class Users {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  Map<String, dynamic> children = {};

  Users(
      {required this.id,
      required this.firstName,
      required this.email,
      required this.lastName,
      required this.children});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        children: json["children"] );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["_id"] = id;
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["email"] = email;
    map["children"] = children;
    return map;
  }

static displayByName(String name) {
    for (var element in data) {
      if (element["first_name"] == name) {
        final user = Users.fromJson(element);
        print(jsonEncode(user.toJson()));
        return;
      }
    }
    print(jsonEncode({"error": "User not found"}));
  }

  static displayByEmail(String email) {
    for (var element in data) {
      if (element["email"] == email) {
        final user = Users.fromJson(element);
        print(jsonEncode(user.toJson()));
        return;
      }
    }
    print(jsonEncode({"error": "User not found"}));
  }

  static displayChildren(String name) {
    for (var element in data) {
      if (element["children"]["first_name"] == name) {
        final user = Users.fromJson(element);
        print(jsonEncode(user.children));
        return;
      }
    }
    print(jsonEncode({"error": "User not found"}));
  }
  }
