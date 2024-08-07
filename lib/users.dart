//1
class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final Children children;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.children});
  //2
  factory User.frommjson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        email: json['email'],
        children: Children.fromJson(json["children"]));
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
}

//3
class Children {
  final String firstName;
  final String lastName;
  final String email;

  Children(
      {required this.email, required this.firstName, required this.lastName});

  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name']);
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};
    map["email"] = email;
    map["first_name"] = firstName;
    map["last_name"] = lastName;

    return map;
  }
}
